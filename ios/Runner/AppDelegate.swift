import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    BatteryLife.register(with: self.registrar(forPlugin: "BatteryLife")!)
      ShakePhone.register(with: self.registrar(forPlugin: "ShakePhone")!)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
