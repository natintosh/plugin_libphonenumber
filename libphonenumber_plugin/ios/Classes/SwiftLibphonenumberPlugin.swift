import Flutter
import UIKit
import libphonenumber
import libPhoneNumber_iOS

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
        isValidPhoneNumber(call: call, result: result)
        break
    case "normalizePhoneNumber":
        normalizePhoneNumber(call: call, result: result)
        break
    case "getRegionInfo":
        getRegionInfo(call: call, result: result)
        break
    case "getNumberType":
        getNumberType(call: call, result: result)
        break
    case "formatAsYouType":
        formatAsYouType(call: call, result: result)
        break
    case "getNameForNumber":
        getNameForNumber(call: call, result: result)
        break
    default:
        result(FlutterMethodNotImplemented)
    }
  }
    
    
    func isValidPhoneNumber(call: FlutterMethodCall, result: @escaping FlutterResult) {
          let arguments = call.arguments as! Dictionary<String, Any>
          let phoneNumber = arguments["phoneNumber"] as! String
          let isoCode = arguments["isoCode"] as! String
        
        
        let phoneUtils : NBPhoneNumberUtil = NBPhoneNumberUtil()
        
        do {
            let p : NBPhoneNumber = try phoneUtils.parse(phoneNumber, defaultRegion: isoCode.uppercased())
            
            let isValid : Bool = phoneUtils.isValidNumber(p)
            
            result(isValid)
        } catch let error as NSError {
            result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
        }
      }
    
    
    func normalizePhoneNumber(call: FlutterMethodCall, result: @escaping FlutterResult) {
          let arguments = call.arguments as! Dictionary<String, Any>
          let phoneNumber = arguments["phoneNumber"] as! String
          let isoCode = arguments["isoCode"] as! String
        
        
        let phoneUtils : NBPhoneNumberUtil = NBPhoneNumberUtil()
        
        do {
            let p : NBPhoneNumber = try phoneUtils.parse(phoneNumber, defaultRegion: isoCode.uppercased())
            
            let normalized : String = try phoneUtils.format(p, numberFormat: NBEPhoneNumberFormat.E164)
            
            result(normalized)
        } catch let error as NSError {
            result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
        }
      }
    
    func getRegionInfo(call: FlutterMethodCall, result: @escaping FlutterResult) {
          let arguments = call.arguments as! Dictionary<String, Any>
          let phoneNumber = arguments["phoneNumber"] as! String
          let isoCode = arguments["isoCode"] as! String
        
        
        let phoneUtils : NBPhoneNumberUtil = NBPhoneNumberUtil()
        
        do {
            let p : NBPhoneNumber = try phoneUtils.parse(phoneNumber, defaultRegion: isoCode.uppercased())
            
            let regionCode : String? = try phoneUtils.getRegionCode(for: p)
            let countryCode : String? = p.countryCode.stringValue as String
            let formattedNumber : String? = try phoneUtils.format(p, numberFormat: NBEPhoneNumberFormat.NATIONAL)
            
            let data : Dictionary<String, String?> = ["isoCode": regionCode, "regionCode" : countryCode, "formattedPhoneNumber" : formattedNumber]
            
            result(data)
        } catch let error as NSError {
            result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
        }
      }
    
    func getNumberType(call: FlutterMethodCall, result: @escaping FlutterResult) {
          let arguments = call.arguments as! Dictionary<String, Any>
          let phoneNumber = arguments["phoneNumber"] as! String
          let isoCode = arguments["isoCode"] as! String
        
        
        let phoneUtils : NBPhoneNumberUtil = NBPhoneNumberUtil()
        
        do {
            let p : NBPhoneNumber = try phoneUtils.parse(phoneNumber, defaultRegion: isoCode.uppercased())
            
            let t : NBEPhoneNumberType = phoneUtils.getNumberType(p)
            
            let value : Int = t.rawValue
            
            result(value)
        } catch let error as NSError {
            result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
        }
      }
    
  
  func formatAsYouType(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
      
        let asYouTypeFormatter : NBAsYouTypeFormatter = NBAsYouTypeFormatter(regionCode: isoCode.uppercased())
    
        var formattedNumber: String?
    
        for i in phoneNumber {
            formattedNumber = asYouTypeFormatter.inputDigit(String(i))
        }
    
        result(formattedNumber)
    }
    
    
  
  func getNameForNumber(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
      
      
      let phoneUtils : NBPhoneNumberUtil = NBPhoneNumberUtil()
      
      do {
          let _ : NBPhoneNumber = try phoneUtils.parse(phoneNumber, defaultRegion: isoCode.uppercased())
        
          result(FlutterMethodNotImplemented)
      } catch let error as NSError {
          result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
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
