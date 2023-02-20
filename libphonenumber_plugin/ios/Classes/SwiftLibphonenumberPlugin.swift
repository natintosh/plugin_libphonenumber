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
        case "getAllCountries":
            getAllCountries(call: call, result: result)
            break
        case "getFormattedExampleNumber":
            getFormattedExampleNumber(call: call, result: result)
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
            let p: PhoneNumber = try parsePhoneNumber(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: true)
            
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
            
            let p: PhoneNumber = try parsePhoneNumber(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: true)
            
            let regionCode: String? = phoneNumberKit.getRegionCode(of: p)
            let countryCode: String?
            
            if let prefix = phoneNumberKit.countryCode(for: regionCode ?? "") {
                countryCode = String(prefix)
            } else {
                countryCode = nil
            }
            
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
            let p: PhoneNumber = try parsePhoneNumber(phoneNumber, withRegion: isoCode.uppercased(), ignoreType: false)
            
            let t: PhoneNumberType = p.type
            
            let index: Int = getIndexFor(phoneNumberType: t)
            
            result(index)
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
    
    func getAllCountries(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let allCountries = phoneNumberKit.allCountries().filter {
            $0.rangeOfCharacter(from: CharacterSet.letters.inverted) == nil
        }
        
        result(allCountries)
    }
    
    func getFormattedExampleNumber(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as! Dictionary<String, Any>
        
        let isoCode = arguments["isoCode"] as! String
        let type = arguments["type"] as! Int
        let format = arguments["format"] as! Int
        
        let phoneNumberType = getPhoneNumberTypeFor(index: type)
        
        let phoneNumberFormat = getPhoneNumberFormatFor(index: format)
        
        let formattedExampleNumber = phoneNumberKit.getFormattedExampleNumber(forCountry: isoCode, ofType: phoneNumberType, withFormat: phoneNumberFormat, withPrefix: true)
        
        
        result(formattedExampleNumber)
    }
}

public extension SwiftLibphonenumberPlugin {
    
    private func parsePhoneNumber(_ phonenumber: String, withRegion regionCode: String, ignoreType: Bool = true) throws -> PhoneNumber {
        do {
            if (regionCode.isEmpty == false) {
                return try phoneNumberKit.parse(phonenumber, withRegion: regionCode, ignoreType: ignoreType)
            } else {
                return try phoneNumberKit.parse(phonenumber, ignoreType: ignoreType)
            }
        } catch {
          throw error
        }
    }
    
    private func getIndexFor(phoneNumberFormat format: PhoneNumberFormat) -> Int {
        switch format {
        case .e164:
            return 0
        case .international:
            return 1
        case .national:
            return 2
        }
    }
    
    private func getPhoneNumberFormatFor(index format: Int) -> PhoneNumberFormat {
        switch format {
        case 0:
            return .e164
        case 1:
            return .international
        case 2:
            return .national
        default:
            return .e164
        }
    }
    
    private func getIndexFor(phoneNumberType type: PhoneNumberType) -> Int {
        switch type {
        case .fixedLine:
            return 0
        case .mobile:
            return 1
        case .fixedOrMobile:
            return 2
        case .tollFree:
            return 3
        case .premiumRate:
            return 4
        case .sharedCost:
            return 5
        case .voip:
            return 6
        case .personalNumber:
            return 7
        case .pager:
            return 8
        case .uan:
            return 9
        case .voicemail:
            return 10
        default:
            return -1
        }
    }
    
    private func getPhoneNumberTypeFor(index type: Int) -> PhoneNumberType {
        switch type {
        case 0:
            return .fixedLine
        case 1:
            return .mobile
        case 2:
            return .fixedOrMobile
        case 3:
            return .tollFree
        case 4:
            return .premiumRate
        case 5:
            return .sharedCost
        case 6:
            return .voip
        case 7:
            return .personalNumber
        case 8:
            return .pager
        case 9:
            return .unknown
        case 10:
            return .voicemail
        default:
            return .unknown
        }
    }
}
