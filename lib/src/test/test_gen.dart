import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:datatower_ai_core/src/base/dt_api.dart';
import 'package:source_gen/source_gen.dart';

class DtTestScanner extends GeneratorForAnnotation<DTApi> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (!buildStep.inputId.path.startsWith("lib/")) return null;
    if (element is ClassElement) {
      ++DtApiMethodsGenerator.total;
    }
    return null;
  }
}

class DtApiMethodsGenerator extends GeneratorForAnnotation<DTApi> {
  static int total = 0;
  static int crt = 0;
  static List<ClassElement> validElements = [];
  static List<String> imports = [];

  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (!buildStep.inputId.path.startsWith("lib/")) return null;
    if (element is ClassElement) {
      validElements.add(element);
    }

    imports.add(
        "import 'package:${buildStep.inputId.package}/${buildStep.inputId.path.replaceFirst("lib/", "")}';");

    if (++crt == total) {
      for (var ce in validElements) {
        for (var me in ce.methods) {
          genDtApiMethod(ce, me);
        }
      }

      final result = """
${imports.join("\n")}
      
const List<DtApiMethodHolder> dtApiMethodHolders = [
  ${validElements.map((e) => "dtApiMethods4${e.name}").join(",\n")}
];

${validElements.map((e) => """
const DtApiMethodHolder dtApiMethods4${e.name} = DtApiMethodHolder(
  "${e.name}", 
  ${e.methods.map((m) => "\"${m.name}\"").toList()}
);
""").join("\n\n")}

class DtApiMethodHolder {
  final String name;
  final Iterable<String> methods;
  
  const DtApiMethodHolder(this.name, this.methods);
}

class DtApiMethod {
  final String name;
  final List<String> orderedParamNames;
  final List<String> orderedParam;
  final Map<String, String> namedParam;
  final void Function(List<dynamic> ordered, Map<String, dynamic> named) run;

  const DtApiMethod({
    required this.name,
    required this.orderedParamNames,
    required this.orderedParam,
    required this.namedParam,
    required this.run,
  });
}

final Map<String, DtApiMethod> dtApiMethods = {
  ${validElements.map((ce) {
        return ce.methods.map((me) {
          return "\"${ce.name}_${me.name}\": ${genDtApiMethod(ce, me)}";
        }).join(",\n");
      }).join(",\n")}
};
      """;

      total = 0;
      crt = 0;
      validElements.clear();
      return result;
    }

    return null;
  }

  String? genDtApiMethod(ClassElement ce, MethodElement me) {
    final List<String> orderedRequiredName = [];
    final List<String> orderedRequired = [];
    final Map<String, String> namedParam = {};
    for (var pe in me.parameters) {
      if (pe.isNamed) {
        namedParam[pe.name] = pe.type.toString();
      } else {
        orderedRequired.add(pe.type.toString());
        orderedRequiredName.add(pe.name.trim());
      }
    }

    return """
    DtApiMethod(
      name: "${ce.name}",
      orderedParamNames: [
        ${orderedRequiredName.map((e) => "\"$e\"").join(",\n")}
      ],
      orderedParam: [
        ${orderedRequired.map((e) => "\"$e\"").join(",\n")}
      ],
      namedParam: {
        ${namedParam.entries.map((e) => "\"${e.key}\": \"${e.value}\"").join(",\n")}
      },
      run: (ordered, named) {
        ${ce.name}.${me.name}(
          ${orderedRequired.indexed.map((e) => "ordered[${e.$1}]").join(", ")} ${orderedRequired.isNotEmpty ? "," : ""}
          ${namedParam.isEmpty ? "" : namedParam.keys.map((key) => "$key: named[\"$key\"]").join(", ")}
        );
      }
    )
    """;
  }
}
