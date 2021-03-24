import Flutter
import UIKit
import libphonenumber

public class SwiftLibphonenumberPlugin: NSObject, FlutterPlugin {
    
    let libphonenumber : LibphonenumberPlugin = LibphonenumberPlugin()
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugin.libphonenumber", binaryMessenger: registrar.messenger())
    
    let instance = SwiftLibphonenumberPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isValidPhoneNumber":
        onDirectMethodCall(call: call, result: result)
        break
    case "normalizePhoneNumber":
        onDirectMethodCall(call: call, result: result)
        break
    case "getRegionInfo":
        onDirectMethodCall(call: call, result: result)
        break
    case "getNumberType":
        onDirectMethodCall(call: call, result: result)
        break
    case "formatAsYouType":
        onDirectMethodCall(call: call, result: result)
        break
    case "getNameForNumber":
        onDirectMethodCall(call: call, result: result)
        break
    default:
        result(FlutterMethodNotImplemented)
    }
  }
    
    func onDirectMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
        
        let data:[String:String] = ["phone_number": phoneNumber, "iso_code": isoCode]
        
        let methodCall:FlutterMethodCall = FlutterMethodCall(methodName: call.method, arguments: data)
        
        libphonenumber.handle(methodCall, result: result)
        return
    }
}
