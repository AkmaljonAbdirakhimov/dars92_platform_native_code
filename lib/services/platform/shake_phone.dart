import 'dart:async';

import 'package:flutter/services.dart';

class ShakePhone {
  static const eventChannel = EventChannel("uz.najottalim.platform/shake");

  static Stream<dynamic> shakeEvent() {
    return eventChannel.receiveBroadcastStream();
  }
}
