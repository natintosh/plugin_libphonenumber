import Flutter
import UIKit
import PhoneNumberKit

public class SwiftLibphonenumberPlugin: NSObject, FlutterPlugin {
    
    let phoneNumberKit: PhoneNumberKit = PhoneNumberKit()
        
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
        
        let isValid: Bool = phoneNumberKit.isValidPhoneNumber(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: true)
        
        result(isValid)
        
    }
    
    
    func normalizePhoneNumber(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
        
        do {
            let p: PhoneNumber = try phoneNumberKit.parse(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: true)
            
            let normalized: String = phoneNumberKit.format(p, toType: PhoneNumberFormat.e164)
            
            result(normalized)
        } catch let error as NSError {
            result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
        }
    }
    
    func getRegionInfo(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
        
        do {
            
            let p: PhoneNumber = try phoneNumberKit.parse(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: true)
            
            let regionCode: String? = phoneNumberKit.getRegionCode(of: p)
            let countryCode: String? = phoneNumberKit.mainCountry(forCode: p.countryCode)
            let formattedNumber: String? = phoneNumberKit.format(p, toType: PhoneNumberFormat.national)
            
            
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
        
        do {
            let p: PhoneNumber = try phoneNumberKit.parse(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: false)
            
            let t: PhoneNumberType = p.type
            
            switch t {
            case .fixedLine:
                result(0)
            case .mobile:
                result(1)
            case .fixedOrMobile:
                result(2)
            case .tollFree:
                result(3)
            case .premiumRate:
                result(4)
            case .sharedCost:
                result(5)
            case .voip:
                result(6)
            case .personalNumber:
                result(7)
            case .pager:
                result(8)
            case .uan:
                result(9)
            case .voicemail:
                result(10)
            case .unknown:
                result(-1)
            case .notParsed:
                result(-1)
            }
        } catch let error as NSError {
            result(FlutterError(code: "\(error.code)", message: error.localizedDescription, details: nil))
        }
    }
    
    
    func formatAsYouType(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
        
        let partialFormatter: PartialFormatter = PartialFormatter(phoneNumberKit: phoneNumberKit, defaultRegion: isoCode.uppercased())
        
        let formattedNumber = partialFormatter.formatPartial(phoneNumber)
        
        result(formattedNumber)
    }
    
    // TODO: Depreciated.
    // There is no valid way to get carrier information on iOS
    func getNameForNumber(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        let phoneNumber = arguments["phoneNumber"] as! String
        let isoCode = arguments["isoCode"] as! String
        
        result(FlutterMethodNotImplemented)
    }
}
