library dart_plugin_class_sample;

export './src/counter.dart';

// Next line exports Impl class which I found wrong.
// But commenting/deleting it cause build error:
//.dart_tool/flutter_build/dart_plugin_registrant.dart:22:9: Error: Undefined name 'DartCounterImpl'.
//        DartCounterImpl.registerWith();
//        ^^^^^^^^^^^^^^^
//.dart_tool/flutter_build/dart_plugin_registrant.dart:32:9: Error: Undefined name 'DartCounterImpl'.
//        DartCounterImpl.registerWith();
//        ^^^^^^^^^^^^^^^
//.dart_tool/flutter_build/dart_plugin_registrant.dart:42:9: Error: Undefined name 'DartCounterImpl'.
//        DartCounterImpl.registerWith();
//        ^^^^^^^^^^^^^^^
//.dart_tool/flutter_build/dart_plugin_registrant.dart:52:9: Error: Undefined name 'DartCounterImpl'.
//        DartCounterImpl.registerWith();
//        ^^^^^^^^^^^^^^^
//.dart_tool/flutter_build/dart_plugin_registrant.dart:62:9: Error: Undefined name 'DartCounterImpl'.
//        DartCounterImpl.registerWith();
//        ^^^^^^^^^^^^^^^
//
// Is it possible to satisfy compiler and not to export implementation (which
// used only internally) ?

export './src/dart_counter.dart';
