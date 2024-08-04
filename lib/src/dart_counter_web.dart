import 'dart:html' as html;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'dart_counter_platform_interface.dart';

class DartCounterWeb extends DartCounterPlatform {
  static void registerWith(Registrar registrar) {
    DartCounterPlatform.instance = DartCounterWeb();
  }

  int _count = 0;

  @override
  int getCount() => _count;

  @override
  void increment() {
    _count++;
    html.window.localStorage['count'] = _count.toString();
  }

  @override
  void decrement() {
    _count--;
    html.window.localStorage['count'] = _count.toString();
  }
}
