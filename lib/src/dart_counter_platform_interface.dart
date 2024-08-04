import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class DartCounterPlatform extends PlatformInterface {
  DartCounterPlatform() : super(token: _token);

  static final Object _token = Object();

  static late DartCounterPlatform _instance;

  static DartCounterPlatform get instance => _instance;

  static set instance(DartCounterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  int getCount();
  void increment();
  void decrement();
}
