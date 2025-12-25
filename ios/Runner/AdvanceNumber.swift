
//: Declare String Begin

/*: "lubgon" :*/
fileprivate let notiWayFormat:String = "lubgomodel"

/*: "981" :*/
fileprivate let const_militaryInstallationName:String = "981"

/*: "bdew11q9hjpc" :*/
fileprivate let notiBeginFormat:String = "bfilew11q9"
fileprivate let show_localId:[Character] = ["h","j","p","c"]

/*: "2ktbum" :*/
fileprivate let constBringHomeMessage:[Character] = ["2","k","t","b","u"]
fileprivate let showGrantUrl:[Character] = ["m"]

/*: "1.9.1" :*/
fileprivate let constTechniqueId:String = "1.9.1"

/*: "https://m. :*/
fileprivate let noti_forwardKey:[Character] = ["h","t","t","p","s",":","/","/"]
fileprivate let show_originDeviceCarrierValue:[Character] = ["m","."]

/*: .com" :*/
fileprivate let main_bioLabUrl:[Character] = [".","c","o","m"]

/*: "CFBundleShortVersionString" :*/
fileprivate let showCurrencyTitle:String = "CFBuinstance decide hide succeed"
fileprivate let user_countryData:[Character] = ["r","t"]
fileprivate let const_purchaseTitle:[Character] = ["V","e","r","s","i","o","n","S","t","r","i","n","g"]

/*: "CFBundleDisplayName" :*/
fileprivate let main_tabData:[Character] = ["C","F","B","u","n","d","l","e","D","i","s","p","l","a","y","N","a","m"]
fileprivate let noti_ginmillStr:String = "selected"

/*: "CFBundleVersion" :*/
fileprivate let mainFlexibleAccessValue:String = "CFBuremove contact kit close"
fileprivate let data_nurseLogId:[Character] = ["e","r","s","i","o","n"]

/*: "weixin" :*/
fileprivate let show_presentFormat:[Character] = ["w","e","i","x","i","n"]

/*: "wxwork" :*/
fileprivate let appPraiseKey:String = "currency"
fileprivate let notiSelectDoingAfterData:[Character] = ["x","w","o","r","k"]

/*: "dingtalk" :*/
fileprivate let k_failureKey:String = "challengeingta"
fileprivate let show_pitiableTitle:String = "techniquek"

/*: "lark" :*/
fileprivate let data_concentrationMessage:[Character] = ["l","a","r","k"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvanceNumber.swift
//  OverseaH5
//
//  Created by young on 2025/9/24.
//

//: import KeychainSwift
import KeychainSwift
//: import UIKit
import UIKit

/// 域名
//: let ReplaceUrlDomain = "lubgon"
let show_approximationMessage = (notiWayFormat.replacingOccurrences(of: "model", with: "n"))
/// 包ID
//: let PackageID = "981"
let mainWarnInsertRecordMessage = (const_militaryInstallationName.capitalized)
/// Adjust
//: let AdjustKey = "bdew11q9hjpc"
let show_mediaEnablegoingMsg = (notiBeginFormat.replacingOccurrences(of: "file", with: "de") + String(show_localId))
//: let AdInstallToken = "2ktbum"
let data_zoneExtraValue = (String(constBringHomeMessage) + String(showGrantUrl))

/// 网络版本号
//: let AppNetVersion = "1.9.1"
let const_pushPath = (constTechniqueId.capitalized)
//: let H5WebDomain = "https://m.\(ReplaceUrlDomain).com"
let userInstallData = (String(noti_forwardKey) + String(show_originDeviceCarrierValue)) + "\(show_approximationMessage)" + (String(main_bioLabUrl))
//: let AppVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
let k_runId = Bundle.main.infoDictionary![(String(showCurrencyTitle.prefix(4)) + "ndleSho" + String(user_countryData) + String(const_purchaseTitle))] as! String
//: let AppBundle = Bundle.main.bundleIdentifier!
let data_sphereName = Bundle.main.bundleIdentifier!
//: let AppName = Bundle.main.infoDictionary!["CFBundleDisplayName"] ?? ""
let notiNetMsg = Bundle.main.infoDictionary![(String(main_tabData) + noti_ginmillStr.replacingOccurrences(of: "selected", with: "e"))] ?? ""
//: let AppBuildNumber = Bundle.main.infoDictionary!["CFBundleVersion"] as! String
let show_needPushName = Bundle.main.infoDictionary![(String(mainFlexibleAccessValue.prefix(4)) + "ndleV" + String(data_nurseLogId))] as! String

//: class AppConfig: NSObject {
class AdvanceNumber: NSObject {
    /// 获取状态栏高度
    //: class func getStatusBarHeight() -> CGFloat {
    class func progress() -> CGFloat {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: if let statusBarManager = UIApplication.shared.windows.first?
            if let statusBarManager = UIApplication.shared.windows.first?
                //: .windowScene?.statusBarManager
                .windowScene?.statusBarManager
            {
                //: return statusBarManager.statusBarFrame.size.height
                return statusBarManager.statusBarFrame.size.height
            }
            //: } else {
        } else {
            //: return UIApplication.shared.statusBarFrame.size.height
            return UIApplication.shared.statusBarFrame.size.height
        }
        //: return 20.0
        return 20.0
    }

    /// 获取window
    //: class func getWindow() -> UIWindow {
    class func occurrent() -> UIWindow {
        //: var window = UIApplication.shared.windows.first(where: {
        var window = UIApplication.shared.windows.first(where: {
            //: $0.isKeyWindow
            $0.isKeyWindow
            //: })
        })
        // 是否为当前显示的window
        //: if window?.windowLevel != UIWindow.Level.normal {
        if window?.windowLevel != UIWindow.Level.normal {
            //: let windows = UIApplication.shared.windows
            let windows = UIApplication.shared.windows
            //: for windowTemp in windows {
            for windowTemp in windows {
                //: if windowTemp.windowLevel == UIWindow.Level.normal {
                if windowTemp.windowLevel == UIWindow.Level.normal {
                    //: window = windowTemp
                    window = windowTemp
                    //: break
                    break
                }
            }
        }
        //: return window!
        return window!
    }

    /// 获取当前控制器
    //: class func currentViewController() -> (UIViewController?) {
    class func utilised() -> (UIViewController?) {
        //: var window = AppConfig.getWindow()
        var window = AdvanceNumber.occurrent()
        //: if window.windowLevel != UIWindow.Level.normal {
        if window.windowLevel != UIWindow.Level.normal {
            //: let windows = UIApplication.shared.windows
            let windows = UIApplication.shared.windows
            //: for windowTemp in windows {
            for windowTemp in windows {
                //: if windowTemp.windowLevel == UIWindow.Level.normal {
                if windowTemp.windowLevel == UIWindow.Level.normal {
                    //: window = windowTemp
                    window = windowTemp
                    //: break
                    break
                }
            }
        }
        //: let vc = window.rootViewController
        let vc = window.rootViewController
        //: return currentViewController(vc)
        return pushDecide(vc)
    }

    //: class func currentViewController(_ vc: UIViewController?)
    class func pushDecide(_ vc: UIViewController?)
        //: -> UIViewController?
        -> UIViewController?
    {
        //: if vc == nil {
        if vc == nil {
            //: return nil
            return nil
        }
        //: if let presentVC = vc?.presentedViewController {
        if let presentVC = vc?.presentedViewController {
            //: return currentViewController(presentVC)
            return pushDecide(presentVC)
            //: } else if let tabVC = vc as? UITabBarController {
        } else if let tabVC = vc as? UITabBarController {
            //: if let selectVC = tabVC.selectedViewController {
            if let selectVC = tabVC.selectedViewController {
                //: return currentViewController(selectVC)
                return pushDecide(selectVC)
            }
            //: return nil
            return nil
            //: } else if let naiVC = vc as? UINavigationController {
        } else if let naiVC = vc as? UINavigationController {
            //: return currentViewController(naiVC.visibleViewController)
            return pushDecide(naiVC.visibleViewController)
            //: } else {
        } else {
            //: return vc
            return vc
        }
    }
}

// MARK: - Device

//: extension UIDevice {
extension UIDevice {
    //: static var modelName: String {
    static var modelName: String {
        //: var systemInfo = utsname()
        var systemInfo = utsname()
        //: uname(&systemInfo)
        uname(&systemInfo)
        //: let machineMirror = Mirror(reflecting: systemInfo.machine)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        //: let identifier = machineMirror.children.reduce("") {
        let identifier = machineMirror.children.reduce("") {
            //: identifier, element in
            identifier, element in
            //: guard let value = element.value as? Int8, value != 0 else {
            guard let value = element.value as? Int8, value != 0 else {
                //: return identifier
                return identifier
            }
            //: return identifier + String(UnicodeScalar(UInt8(value)))
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        //: return identifier
        return identifier
    }

    /// 获取当前系统时区
    //: static var timeZone: String {
    static var timeZone: String {
        //: let currentTimeZone = NSTimeZone.system
        let currentTimeZone = NSTimeZone.system
        //: return currentTimeZone.identifier
        return currentTimeZone.identifier
    }

    /// 获取当前系统语言
    //: static var langCode: String {
    static var langCode: String {
        //: let language = Locale.preferredLanguages.first
        let language = Locale.preferredLanguages.first
        //: return language ?? ""
        return language ?? ""
    }

    /// 获取接口语言
    //: static var interfaceLang: String {
    static var interfaceLang: String {
        //: let lang = UIDevice.getSystemLangCode()
        let lang = UIDevice.noKey()
        //: if ["en", "ar", "es", "pt"].contains(lang) {
        if ["en", "ar", "es", "pt"].contains(lang) {
            //: return lang
            return lang
        }
        //: return "en"
        return "en"
    }

    /// 获取当前系统地区
    //: static var countryCode: String {
    static var countryCode: String {
        //: let locale = Locale.current
        let locale = Locale.current
        //: let countryCode = locale.regionCode
        let countryCode = locale.regionCode
        //: return countryCode ?? ""
        return countryCode ?? ""
    }

    /// 获取系统UUID（每次调用都会产生新值，所以需要keychain）
    //: static var systemUUID: String {
    static var systemUUID: String {
        //: let key = KeychainSwift()
        let key = KeychainSwift()
        //: if let value = key.get(AdjustKey) {
        if let value = key.get(show_mediaEnablegoingMsg) {
            //: return value
            return value
            //: } else {
        } else {
            //: let value = NSUUID().uuidString
            let value = NSUUID().uuidString
            //: key.set(value, forKey: AdjustKey)
            key.set(value, forKey: show_mediaEnablegoingMsg)
            //: return value
            return value
        }
    }

    /// 获取已安装应用信息
    //: static var getInstalledApps: String {
    static var getInstalledApps: String {
        //: var appsArr: [String] = []
        var appsArr: [String] = []
        //: if UIDevice.canOpenApp("weixin") {
        if UIDevice.with((String(show_presentFormat))) {
            //: appsArr.append("weixin")
            appsArr.append((String(show_presentFormat)))
        }
        //: if UIDevice.canOpenApp("wxwork") {
        if UIDevice.with((appPraiseKey.replacingOccurrences(of: "currency", with: "w") + String(notiSelectDoingAfterData))) {
            //: appsArr.append("wxwork")
            appsArr.append((appPraiseKey.replacingOccurrences(of: "currency", with: "w") + String(notiSelectDoingAfterData)))
        }
        //: if UIDevice.canOpenApp("dingtalk") {
        if UIDevice.with((k_failureKey.replacingOccurrences(of: "challenge", with: "d") + show_pitiableTitle.replacingOccurrences(of: "technique", with: "l"))) {
            //: appsArr.append("dingtalk")
            appsArr.append((k_failureKey.replacingOccurrences(of: "challenge", with: "d") + show_pitiableTitle.replacingOccurrences(of: "technique", with: "l")))
        }
        //: if UIDevice.canOpenApp("lark") {
        if UIDevice.with((String(data_concentrationMessage))) {
            //: appsArr.append("lark")
            appsArr.append((String(data_concentrationMessage)))
        }
        //: if appsArr.count > 0 {
        if appsArr.count > 0 {
            //: return appsArr.joined(separator: ",")
            return appsArr.joined(separator: ",")
        }
        //: return ""
        return ""
    }

    /// 判断是否安装app
    //: static func canOpenApp(_ scheme: String) -> Bool {
    static func with(_ scheme: String) -> Bool {
        //: let url = URL(string: "\(scheme)://")!
        let url = URL(string: "\(scheme)://")!
        //: if UIApplication.shared.canOpenURL(url) {
        if UIApplication.shared.canOpenURL(url) {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 获取系统语言
    /// - Returns: 国际通用语言Code
    //: @objc public class func getSystemLangCode() -> String {
    @objc public class func noKey() -> String {
        //: let language = NSLocale.preferredLanguages.first
        let language = NSLocale.preferredLanguages.first
        //: let array = language?.components(separatedBy: "-")
        let array = language?.components(separatedBy: "-")
        //: return array?.first ?? "en"
        return array?.first ?? "en"
    }
}
