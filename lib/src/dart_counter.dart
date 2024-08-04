import 'dart_counter_platform_interface.dart';

class DartCounterImpl extends DartCounterPlatform {
  static void registerWith() {
    DartCounterPlatform.instance = DartCounterImpl();
  }

  int _count = 0;

  @override
  int getCount() => _count;

  @override
  void increment() => _count++;

  @override
  void decrement() => _count--;
}
