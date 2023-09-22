import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:source_gen/source_gen.dart';

class DtTestScanner extends GeneratorForAnnotation<DTApi> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element is ClassElement) {
      ++DtApiMethodsGenerator.total;
    }
    return null;
  }
}

class DtApiMethodsGenerator extends GeneratorForAnnotation<DTApi> {
  static int total = 0;
  static int crt = 0;
  static List<DtApiMethodHolder> holders = [];

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element is ClassElement) {
      holders.add(DtApiMethodHolder(element.name, element.methods.map((e) => e.name)));
    }

    if (++crt == total) {
      final result = """
      const List<DtApiMethodHolder> dtApiMethodHolders = [
        ${holders.map((e) => "dtApiMethods4${e.fileName}").join(",\n")}
      ];
      
      ${holders.map((e) => """
      const DtApiMethodHolder dtApiMethods4${e.fileName} = DtApiMethodHolder(
        "${e.fileName}", 
        ${e.methods.map((m) => "\"$m\"").toList()}
      );
      """).join("\n\n")}
      
      class DtApiMethodHolder {
        final String fileName;
        final Iterable<String> methods;
        
        const DtApiMethodHolder(this.fileName, this.methods);
      }
      
      """;

      total = 0;
      crt = 0;
      holders.clear();
      return result;
    }

    return null;
  }
}

class DtApiMethodHolder {
  final String fileName;
  final Iterable<String> methods;

  const DtApiMethodHolder(this.fileName, this.methods);
}