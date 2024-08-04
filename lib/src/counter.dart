import 'dart_counter_platform_interface.dart';

class DartCounter {
  int getCount() => DartCounterPlatform.instance.getCount();
  void increment() => DartCounterPlatform.instance.increment();
  void decrement() => DartCounterPlatform.instance.decrement();
}
