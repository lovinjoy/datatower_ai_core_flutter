import 'package:build/build.dart';
import 'package:datatower_ai_core_flutter/src/test/test_gen.dart';
import 'package:source_gen/source_gen.dart';

Builder dtTestScannerBuilder(BuilderOptions options) =>
    LibraryBuilder(DtTestScanner());

Builder dtApiMethodGenBuilder(BuilderOptions options) =>
    LibraryBuilder(DtApiMethodsGenerator(), generatedExtension: ".g.dt.dart");
