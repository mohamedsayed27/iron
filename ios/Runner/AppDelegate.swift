import UIKit
import Flutter
import CoreNFC

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let controller = window?.rootViewController as! FlutterViewController
              let channel = FlutterMethodChannel(name: "mohamed.sayed/detectNFCSupport", binaryMessenger: controller.binaryMessenger)
              
              channel.setMethodCallHandler { [weak self] (call, result) in
                  if call.method == "isNfcSupported" {
                      self?.isNfcSupported(result: result)
                  } else {
                      result(FlutterMethodNotImplemented)
                  }
              }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func isNfcSupported(result: FlutterResult) {
            // Check for NFC support in Swift
            let isSupported = NFCNDEFReaderSession.readingAvailable
            
            // Return the result to Flutter
            result(isSupported)
        }
}
