import Flutter
import UIKit

@objc public class BatteryLife: NSObject, FlutterPlugin {
    
    // Plugin-ni ro'yxatdan o'tkazish uchun Flutter chaqiradigan metod
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "uz.najottalim.platform/batareya", binaryMessenger: registrar.messenger())
        let instance = BatteryLife()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    // MethodCallDelegate uchun metod
      public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
          if call.method == "batareyaniFoiziniOl" {
              receiveBatteryLevel(result: result)
          } else {
              result(FlutterMethodNotImplemented)
          }
      }
    
    
    private func receiveBatteryLevel(result: FlutterResult) {
      let device = UIDevice.current
      device.isBatteryMonitoringEnabled = true
      if device.batteryState == UIDevice.BatteryState.unknown {
        result(FlutterError(code: "UNAVAILABLE",
                            message: "Battery level not available.",
                            details: nil))
      } else {
        result(Int(device.batteryLevel * 100))
      }
    }
}
