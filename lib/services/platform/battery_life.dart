import 'package:flutter/services.dart';

class BatteryLife {
  static const methodChannel = MethodChannel("uz.najottalim.platform/batareya");

  static Future<int> getBatteryLevel() async {
    try {
      // invokeMethod - narigi tomondagi (native tomondagi) funksiyani chaqiradi
      final result =
          await methodChannel.invokeMethod<int>("batareyaniFoiziniOl");
      return Future.value(result);
    } on PlatformException catch (e) {
      print("Qurilmada xatolik: ${e.message}");
      return -1;
    }
  }
}
