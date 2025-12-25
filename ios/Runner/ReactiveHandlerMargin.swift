
//: Declare String Begin

/*: "getDeviceID" :*/
fileprivate let mainAroundData:[Character] = ["g","e","t","D","e","v","i","c","e","I","D"]

/*: "getFirebaseID" :*/
fileprivate let main_sizePurchaseTitle:[Character] = ["g","e","t","F","i","r","e","b","a","s","e","I"]
fileprivate let constPackageSinceUrl:[Character] = ["D"]

/*: "getAreaISO" :*/
fileprivate let dataOrderedSeriesKey:[Character] = ["g","e","t","A","r"]
fileprivate let user_carrierUrl:String = "eaISOforward space select origin on"

/*: "getProxyStatus" :*/
fileprivate let data_cottonId:[Character] = ["g","e","t","P","r","o","x","y","S"]
fileprivate let notiValueUrl:[Character] = ["t","a","t","u","s"]

/*: "getMicStatus" :*/
fileprivate let user_barMessage:[Character] = ["g","e","t","M"]
fileprivate let main_photographicCameraTitle:String = "icStfield lab system"

/*: "getPhotoStatus" :*/
fileprivate let showManagerProductionPath:String = "getPhotcarrier need window level"
fileprivate let appLargeFindMessage:String = "screen rating new image largeoStatus"

/*: "getCameraStatus" :*/
fileprivate let notiEvaluationFormat:String = "ok as area normalgetCam"
fileprivate let data_bodyId:String = "optionaoptionus"

/*: "reportAdjust" :*/
fileprivate let dataAcquirableUrl:String = "reyourr"
fileprivate let showTitleFailTitle:[Character] = ["u","s","t"]

/*: "requestLocalPush" :*/
fileprivate let user_cityStateTitle:String = "REQUE"
fileprivate let app_reportMessage:String = "control letstLoc"

/*: "getLangCode" :*/
fileprivate let user_countryName:String = "input copy open rawgetLa"

/*: "getTimeZone" :*/
fileprivate let app_unprocessedId:String = "finish out searchgetTi"
fileprivate let showActionAllowId:[Character] = ["m","e","Z","o","n","e"]

/*: "getInstalledApps" :*/
fileprivate let dataPhonePath:String = "along newgetIn"
fileprivate let k_everySourceData:String = "out message root timedApps"

/*: "getSystemUUID" :*/
fileprivate let show_deviceMessage:String = "foundation true succeed in filtergetS"
fileprivate let const_albumPageMsg:String = "uuid"

/*: "getCountryCode" :*/
fileprivate let notiBridgeMessage:[Character] = ["g","e","t","C","o","u","n","t","r","y"]
fileprivate let k_searchStr:String = "Codeframe response tap evaluate"

/*: "inAppRating" :*/
fileprivate let showPickFormat:String = "inAppRend since point rating count"
fileprivate let constClickExtraUrl:String = "ATING"

/*: "apPay" :*/
fileprivate let data_barUrl:String = "apPayraw create block"

/*: "subscribe" :*/
fileprivate let userCoreValue:String = "decisionbscr"
fileprivate let data_legionPath:String = "ende"

/*: "openSystemBrowser" :*/
fileprivate let mainDiskKey:[Character] = ["o","p","e","n","S","y","s","t","e","m","B","r","o","w","s"]
fileprivate let app_valueValue:[Character] = ["e","r"]

/*: "closeWebview" :*/
fileprivate let user_grantValue:String = "CLOS"
fileprivate let constProductStr:String = "viecancel"

/*: "openNewWebview" :*/
fileprivate let appCountName:[Character] = ["o","p","e","n","N","e"]
fileprivate let noti_afterwardsAlwaysName:String = "wWebfile let"

/*: "reloadWebview" :*/
fileprivate let mainAlbumId:[Character] = ["r","e","l","o","a","d","W","e","b","v","i","e"]
fileprivate let data_postId:String = "trust"

/*: "typeName" :*/
fileprivate let main_promptId:[UInt8] = [0x24,0x29,0x20,0x35,0x1e,0x31,0x3d,0x35]

private func processError(state num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "deviceID" :*/
fileprivate let noti_allKey:[UInt8] = [0x44,0x49,0x65,0x63,0x69,0x76,0x65,0x64]

/*: "fireBaseID" :*/
fileprivate let app_carrierFeedbackMsg:[UInt8] = [0x44,0x49,0x65,0x73,0x61,0x42,0x65,0x72,0x69,0x66]

/*: "areaISO" :*/
fileprivate let constActivityData:[UInt8] = [0x22,0x33,0x26,0x22,0xa,0x14,0x10]

fileprivate func modelTransform(around num: UInt8) -> UInt8 {
    let value = Int(num) + 63
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "isProxy" :*/
fileprivate let userAtData:[UInt8] = [0xf7,0x1,0xde,0x0,0xfd,0x6,0x7]

fileprivate func ofAlong(success num: UInt8) -> UInt8 {
    let value = Int(num) + 114
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "langCode" :*/
fileprivate let userFireTimeMessage:[UInt8] = [0x60,0x55,0x62,0x5b,0x37,0x63,0x58,0x59]

fileprivate func styleOff(post num: UInt8) -> UInt8 {
    let value = Int(num) + 12
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "timeZone" :*/
fileprivate let data_sharedTitle:[UInt8] = [0x8f,0x84,0x88,0x80,0x75,0x8a,0x89,0x80]

fileprivate func inputState(maker num: UInt8) -> UInt8 {
    let value = Int(num) + 229
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "installedApps" :*/
fileprivate let app_pleaseName:[UInt8] = [0xeb,0xec,0xf1,0xf6,0xe3,0xee,0xee,0xe7,0xe6,0xc3,0xf2,0xf2,0xf1]

private func deleteBase(camera num: UInt8) -> UInt8 {
    return num ^ 130
}

/*: "systemUUID" :*/
fileprivate let app_imageMsg:[UInt8] = [0x8c,0x92,0x8c,0x8d,0x7e,0x86,0x6e,0x6e,0x62,0x5d]

fileprivate func reportCarrier(state num: UInt8) -> UInt8 {
    let value = Int(num) - 25
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "countryCode" :*/
fileprivate let show_deadlineTitle:[UInt8] = [0x65,0x64,0x6f,0x43,0x79,0x72,0x74,0x6e,0x75,0x6f,0x63]

/*: "status" :*/
fileprivate let userNativeStr:[UInt8] = [0x2b,0x2c,0x39,0x2c,0x2d,0x2b]

private func scriptApp(network num: UInt8) -> UInt8 {
    return num ^ 88
}

/*: "isAuth" :*/
fileprivate let const_coreCarrierUrl:[UInt8] = [0x8f,0x95,0xa7,0x93,0x92,0x8e]

private func phoneUs(visible num: UInt8) -> UInt8 {
    return num ^ 230
}

/*: "isFirst" :*/
fileprivate let noti_sessionFormat:[UInt8] = [0xf,0x19,0xec,0xf,0x18,0x19,0x1a]

fileprivate func viewHideName(with num: UInt8) -> UInt8 {
    let value = Int(num) - 166
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: __LocalPush" :*/
fileprivate let main_backLinkStr:String = "_"
fileprivate let noti_moveString:String = "_Locdisappear block not date"

/*: "identifier" :*/
fileprivate let k_enableFilterFormat:[UInt8] = [0x9f,0x92,0x93,0x98,0x82,0x9f,0x90,0x9f,0x93,0x84]

/*: "HTTPProxy" :*/
fileprivate let user_aroundValue:[Character] = ["H","T","T","P","P"]
fileprivate let noti_currentLabMsg:String = "rlistxy"

/*: "HTTPSProxy" :*/
fileprivate let mainBackgroundProcessCarrierId:String = "https"
fileprivate let mainSourceMessage:[Character] = ["P","r","o","x","y"]

/*: "SOCKSProxy" :*/
fileprivate let userSchemePromptStr:String = "arrayOCKarray"

/*: "__SCOPED__" :*/
fileprivate let app_decidePath:String = "__SCOtechnique load break on"

/*: "tap" :*/
fileprivate let mainInputPresentData:String = "offap"

/*: "tun" :*/
fileprivate let appMediaValue:[Character] = ["t","u","n"]

/*: "ipsec" :*/
fileprivate let app_regionStr:[Character] = ["i","p","s","e","c"]

/*: "ppp" :*/
fileprivate let user_activeAgentFormat:String = "linklinklink"

/*: "Retry After or Go to " :*/
fileprivate let main_zoneString:String = "if errorRetr"
fileprivate let notiPassId:String = "height since cancelr or "

/*: "Feedback" :*/
fileprivate let app_statisticalProcedureBlackStr:String = "kind session always local findFeed"

/*: " to contact us" :*/
fileprivate let mainChallengeKey:String = "safe i base count to c"
fileprivate let userSystemTitle:[Character] = ["o","n"]
fileprivate let data_closeValue:[Character] = ["t","a","c","t"," ","u","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReactiveHandlerMargin.swift
//  OverseaH5
//
//  Created by young on 2025/9/23.
//

//: import CoreTelephony
import CoreTelephony
//: import FirebaseMessaging
import FirebaseMessaging
//: import HandyJSON
import HandyJSON
//: import StoreKit
import StoreKit
//: import UIKit
import UIKit

/// H5事件
//: private let getDeviceID     = "getDeviceID"        // 获取设备号
private let constNumerousUrl = (String(mainAroundData)) // 获取设备号
//: private let getFirebaseID   = "getFirebaseID"      // 获取FireBaseToken
private let constReportTitle = (String(main_sizePurchaseTitle) + String(constPackageSinceUrl)) // 获取FireBaseToken
//: private let getAreaISO      = "getAreaISO"         // 获取 SIM/运营商 地区ISO
private let userAMessage = (String(dataOrderedSeriesKey) + String(user_carrierUrl.prefix(5))) // 获取 SIM/运营商 地区ISO
//: private let getProxyStatus  = "getProxyStatus"     // 获取是否使用了代理
private let const_requestNegativeMsg = (String(data_cottonId) + String(notiValueUrl)) // 获取是否使用了代理
//: private let getMicStatus    = "getMicStatus"       // 获取麦克风权限
private let appManagerData = (String(user_barMessage) + String(main_photographicCameraTitle.prefix(4)) + "atus") // 获取麦克风权限
//: private let getPhotoStatus  = "getPhotoStatus"     // 获取相册权限
private let userNetMessage = (String(showManagerProductionPath.prefix(7)) + String(appLargeFindMessage.suffix(7))) // 获取相册权限
//: private let getCameraStatus = "getCameraStatus"    // 获取相机权限
private let userPastPurchaseKey = (String(notiEvaluationFormat.suffix(6)) + "eraS" + data_bodyId.replacingOccurrences(of: "option", with: "t")) // 获取相机权限
//: private let reportAdjust    = "reportAdjust"       // 上报Adjust
private let notiTransferralKey = (dataAcquirableUrl.replacingOccurrences(of: "your", with: "po") + "tAdj" + String(showTitleFailTitle)) // 上报Adjust
//: private let requestLocalPush = "requestLocalPush"  // APP在后台收到音视频通话推送
private let k_requestString = (user_cityStateTitle.lowercased() + String(app_reportMessage.suffix(5)) + "alPush") // APP在后台收到音视频通话推送
//: private let getLangCode      = "getLangCode"        // 获取系统语言
private let k_scaleId = (String(user_countryName.suffix(5)) + "ngCode") // 获取系统语言
//: private let getTimeZone      = "getTimeZone"        // 获取当前系统时区
private let mainAroundStr = (String(app_unprocessedId.suffix(5)) + String(showActionAllowId)) // 获取当前系统时区
//: private let getInstalledApps = "getInstalledApps"   // 获取已安装应用列表
private let main_systemAKey = (String(dataPhonePath.suffix(5)) + "stalle" + String(k_everySourceData.suffix(5))) // 获取已安装应用列表
//: private let getSystemUUID    = "getSystemUUID"      // 获取系统UUID
private let main_nameValue = (String(show_deviceMessage.suffix(4)) + "ystem" + const_albumPageMsg.uppercased()) // 获取系统UUID
//: private let getCountryCode   = "getCountryCode"     // 获取当前系统地区
private let main_techniqueMsg = (String(notiBridgeMessage) + String(k_searchStr.prefix(4))) // 获取当前系统地区
//: private let inAppRating      = "inAppRating"        // 应用内评分
private let notiPurchaseTitle = (String(showPickFormat.prefix(6)) + constClickExtraUrl.lowercased()) // 应用内评分
//: private let apPay            = "apPay"              // 苹果支付
private let const_falloutFormat = (String(data_barUrl.prefix(5))) // 苹果支付
//: private let subscribe        = "subscribe"          // 苹果支付-订阅
private let k_supportValue = (userCoreValue.replacingOccurrences(of: "decision", with: "su") + data_legionPath.replacingOccurrences(of: "end", with: "ib")) // 苹果支付-订阅
//: private let openSystemBrowser = "openSystemBrowser" // 调用系统浏览器打开url
private let userEvaluationUrl = (String(mainDiskKey) + String(app_valueValue)) // 调用系统浏览器打开url
//: private let closeWebview     = "closeWebview"       // 关闭当前webview
private let k_praiseBackgroundTitle = (user_grantValue.lowercased() + "eWeb" + constProductStr.replacingOccurrences(of: "cancel", with: "w")) // 关闭当前webview
//: private let openNewWebview   = "openNewWebview"     // 使用新webview打开url
private let notiItemCameraFormat = (String(appCountName) + String(noti_afterwardsAlwaysName.prefix(4)) + "view") // 使用新webview打开url
//: private let reloadWebview    = "reloadWebview"      // 重载webView
private let show_progressUrl = (String(mainAlbumId) + data_postId.replacingOccurrences(of: "trust", with: "w")) // 重载webView

//: struct JSMessageModel: HandyJSON {
struct BootPacketRegion: HandyJSON {
    //: var typeName = ""
    var typeName = ""
    //: var token: String?
    var token: String?
    //: var totalCount: Double?
    var totalCount: Double?

    //: var showText: String?
    var showText: String?
    //: var data: UserInfoModel?
    var data: OptionModel?
    // 内购/订阅 H5参数
    //: var goodsId: String?
    var goodsId: String? // 商品Id
    //: var source: Int?
    var source: Int? // 充值来源
    //: var type: Int?
    var type: Int? // 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    //: var url: String?
    var url: String? // url
    //: var fullscreen: Int?
    var fullscreen: Int? // fullscreen：0:页面从状态栏以下渲染 1:全屏
    //: var transparency: Int?
    var transparency: Int? // transparency：0-webview白色背景 1-webview透明背景
}

//: struct UserInfoModel: HandyJSON {
struct OptionModel: HandyJSON {
    //: var headPic: String?
    var headPic: String? // 头像
    //: var nickname: String?
    var nickname: String? // 昵称
    //: var uid: String?
    var uid: String? // 用户Id
}

//: extension AppWebViewController {
extension DiscoverDocument {
    //: func handleH5Message(schemeDic: [String: Any], callBack: @escaping (_ backDic: [String: Any]) -> Void) {
    func enablece(schemeDic: [String: Any], callBack: @escaping (_ backDic: [String: Any]) -> Void) {
        //: if let model = JSMessageModel.deserialize(from: schemeDic) {
        if let model = BootPacketRegion.deserialize(from: schemeDic) {
            //: switch model.typeName {
            switch model.typeName {
            //: case getDeviceID:
            case constNumerousUrl:
                //: let adidStr = AppAdjustManager.getAdjustAdid()
                let adidStr = AdvanceSkip.process()
                //: callBack(["typeName": model.typeName, "deviceID": adidStr])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: noti_allKey.reversed(), encoding: .utf8)!: adidStr])

            //: case getFirebaseID:
            case constReportTitle:
                //: AppWebViewController.getFireBaseToken { str in
                DiscoverDocument.text { str in
                    //: callBack(["typeName": model.typeName, "fireBaseID": str])
                    callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: app_carrierFeedbackMsg.reversed(), encoding: .utf8)!: str])
                }

            //: case getAreaISO:
            case userAMessage:
                //: let arr = AppWebViewController.getCountryISOCode()
                let arr = DiscoverDocument.clear()
                //: callBack(["typeName": model.typeName, "areaISO": arr.joined(separator: ",")])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: constActivityData.map{modelTransform(around: $0)}, encoding: .utf8)!: arr.joined(separator: ",")])

            //: case getProxyStatus:
            case const_requestNegativeMsg:
                //: let status = AppWebViewController.getUsedProxyStatus()
                let status = DiscoverDocument.source()
                //: callBack(["typeName": model.typeName, "isProxy": status])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: userAtData.map{ofAlong(success: $0)}, encoding: .utf8)!: status])

            //: case getLangCode:
            case k_scaleId:
                //: let langCode = UIDevice.langCode
                let langCode = UIDevice.langCode
                //: callBack(["typeName": model.typeName, "langCode": langCode])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: userFireTimeMessage.map{styleOff(post: $0)}, encoding: .utf8)!: langCode])

            //: case getTimeZone:
            case mainAroundStr:
                //: let timeZone = UIDevice.timeZone
                let timeZone = UIDevice.timeZone
                //: callBack(["typeName": model.typeName, "timeZone": timeZone])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: data_sharedTitle.map{inputState(maker: $0)}, encoding: .utf8)!: timeZone])

            //: case getInstalledApps:
            case main_systemAKey:
                //: let apps = UIDevice.getInstalledApps
                let apps = UIDevice.getInstalledApps
                //: callBack(["typeName": model.typeName, "installedApps": apps])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: app_pleaseName.map{deleteBase(camera: $0)}, encoding: .utf8)!: apps])

            //: case getSystemUUID:
            case main_nameValue:
                //: let uuid = UIDevice.systemUUID
                let uuid = UIDevice.systemUUID
                //: callBack(["typeName": model.typeName, "systemUUID": uuid])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: app_imageMsg.map{reportCarrier(state: $0)}, encoding: .utf8)!: uuid])

            //: case getCountryCode:
            case main_techniqueMsg:
                //: let countryCode = UIDevice.countryCode
                let countryCode = UIDevice.countryCode
                //: callBack(["typeName": model.typeName, "countryCode": countryCode])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: show_deadlineTitle.reversed(), encoding: .utf8)!: countryCode])

            //: case inAppRating:
            case notiPurchaseTitle:
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])
                //: AppWebViewController.requestInAppRating()
                DiscoverDocument.info()

            //: case apPay:
            case const_falloutFormat:
                //: if let goodsId = model.goodsId, let source = model.source {
                if let goodsId = model.goodsId, let source = model.source {
                    //: self.applePay(productId: goodsId, source: source, payType: .Pay) { success in
                    self.activityAfter(productId: goodsId, source: source, payType: .Pay) { success in
                        //: callBack(["typeName": model.typeName, "status": success])
                        callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: userNativeStr.map{scriptApp(network: $0)}, encoding: .utf8)!: success])
                    }
                }

            //: case subscribe:
            case k_supportValue:
                //: if let goodsId = model.goodsId {
                if let goodsId = model.goodsId {
                    //: self.applePay(productId: goodsId, payType: .Subscribe) { success in
                    self.activityAfter(productId: goodsId, payType: .Subscribe) { success in
                        //: callBack(["typeName": model.typeName, "status": success])
                        callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: userNativeStr.map{scriptApp(network: $0)}, encoding: .utf8)!: success])
                    }
                }

            //: case openSystemBrowser:
            case userEvaluationUrl:
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])
                //: if let urlStr = model.url, let openURL = URL(string: urlStr) {
                if let urlStr = model.url, let openURL = URL(string: urlStr) {
                    //: UIApplication.shared.open(openURL, options: [:], completionHandler: nil)
                    UIApplication.shared.open(openURL, options: [:], completionHandler: nil)
                }

            //: case closeWebview:
            case k_praiseBackgroundTitle:
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])
                //: self.closeWeb()
                self.map()

            //: case openNewWebview:
            case notiItemCameraFormat:
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])
                //: if let urlStr = model.url,
                if let urlStr = model.url,
                   //: let transparency = model.transparency,
                   let transparency = model.transparency,
                   //: let fullscreen = model.fullscreen {
                   let fullscreen = model.fullscreen
                {
                    //: AppWebViewController.openNewWebView(urlStr, transparency, fullscreen)
                    DiscoverDocument.enableOff(urlStr, transparency, fullscreen)
                }

            //: case reloadWebview:
            case show_progressUrl:
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])
                //: self.reloadWebView()
                self.tillAdjust()

            //: case getMicStatus:
            case appManagerData:
                //: AppPermissionTool.shared.requestMicPermission { auth, isFirst in
                CanAd.shared.postulationLikeType { auth, isFirst in
                    //: callBack(["typeName": model.typeName, "isAuth": auth, "isFirst": isFirst])
                    callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: const_coreCarrierUrl.map{phoneUs(visible: $0)}, encoding: .utf8)!: auth, String(bytes: noti_sessionFormat.map{viewHideName(with: $0)}, encoding: .utf8)!: isFirst])
                }

            //: case getPhotoStatus:
            case userNetMessage:
                //: AppPermissionTool.shared.requestPhotoPermission { auth, isFirst in
                CanAd.shared.value { auth, isFirst in
                    //: callBack(["typeName": model.typeName, "isAuth": auth, "isFirst": isFirst])
                    callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: const_coreCarrierUrl.map{phoneUs(visible: $0)}, encoding: .utf8)!: auth, String(bytes: noti_sessionFormat.map{viewHideName(with: $0)}, encoding: .utf8)!: isFirst])
                }

            //: case getCameraStatus:
            case userPastPurchaseKey:
                //: AppPermissionTool.shared.requestCameraPermission { auth, isFirst in
                CanAd.shared.device { auth, isFirst in
                    //: callBack(["typeName": model.typeName, "isAuth": auth, "isFirst": isFirst])
                    callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName, String(bytes: const_coreCarrierUrl.map{phoneUs(visible: $0)}, encoding: .utf8)!: auth, String(bytes: noti_sessionFormat.map{viewHideName(with: $0)}, encoding: .utf8)!: isFirst])
                }

            //: case reportAdjust:
            case notiTransferralKey:
                //: if let token = model.token {
                if let token = model.token {
                    //: if let count = model.totalCount {
                    if let count = model.totalCount {
                        //: AppAdjustManager.addPurchasedEvent(token: token, count: count)
                        AdvanceSkip.can(token: token, count: count)
                        //: } else {
                    } else {
                        //: AppAdjustManager.addEvent(token: token)
                        AdvanceSkip.honkyTonkMake(token: token)
                    }
                }
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])

            //: case requestLocalPush:
            case k_requestString:
                //: callBack(["typeName": model.typeName])
                callBack([String(bytes: main_promptId.map{processError(state: $0)}, encoding: .utf8)!: model.typeName])
                //: AppWebViewController.pushLocalNotification(model)
                DiscoverDocument.trackPrompt(model)

            //: default: break
            default: break
            }
        }
    }
}

// MARK: - Event

//: extension AppWebViewController {
extension DiscoverDocument {
    /// 打开新的webview
    /// - Parameters:
    ///   - urlStr: web地址
    ///   - transparency: 0：白色背景 1：透明背景
    ///   - fullscreen: 0:页面从状态栏以下渲染  1：全屏
    //: class func openNewWebView(_ urlStr: String, _ transparency: Int = 0, _ fullscreen: Int = 1) {
    class func enableOff(_ urlStr: String, _ transparency: Int = 0, _ fullscreen: Int = 1) {
        //: let vc = AppWebViewController()
        let vc = DiscoverDocument()
        //: vc.urlString = urlStr
        vc.urlString = urlStr
        //: vc.clearBgColor = (transparency == 1)
        vc.clearBgColor = (transparency == 1)
        //: vc.fullscreen = (fullscreen == 1)
        vc.fullscreen = (fullscreen == 1)
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: AppConfig.currentViewController()?.present(vc, animated: true)
        AdvanceNumber.utilised()?.present(vc, animated: true)
    }

    /// 本地推送
    //: class func pushLocalNotification(_ model: JSMessageModel) {
    class func trackPrompt(_ model: BootPacketRegion) {
        //: guard UIApplication.shared.applicationState != .active else { return }
        guard UIApplication.shared.applicationState != .active else { return }
        //: UNUserNotificationCenter.current().getNotificationSettings { setting in
        UNUserNotificationCenter.current().getNotificationSettings { setting in
            //: switch setting.authorizationStatus {
            switch setting.authorizationStatus {
            //: case .notDetermined, .denied, .ephemeral:
            case .notDetermined, .denied, .ephemeral:
                //: print("本地推送通知 -- 用户未授权\(setting.authorizationStatus)")
                //: print()
                print()

            //: case .provisional, .authorized:
            case .provisional, .authorized:
                //: if let dataModel = model.data {
                if let dataModel = model.data {
                    //: let content = UNMutableNotificationContent()
                    let content = UNMutableNotificationContent()
                    //: content.title = dataModel.nickname ?? ""
                    content.title = dataModel.nickname ?? ""
                    //: content.body = model.showText ?? ""
                    content.body = model.showText ?? ""
                    //: let identifier = dataModel.uid ?? "\(AppName)__LocalPush"
                    let identifier = dataModel.uid ?? "\(notiNetMsg)" + (main_backLinkStr.capitalized + String(noti_moveString.prefix(4)) + "alPush")
                    //: content.userInfo = ["identifier": identifier]
                    content.userInfo = [String(bytes: k_enableFilterFormat.map{$0^246}, encoding: .utf8)!: identifier]
                    //: content.sound = UNNotificationSound.default
                    content.sound = UNNotificationSound.default

                    //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
                    let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
                    //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                    //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
                    let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
                    //: UNUserNotificationCenter.current().add(request) { _ in
                    UNUserNotificationCenter.current().add(request) { _ in
                    }
                }

            //: @unknown default:
            @unknown default:
                //: print("本地推送通知 -- 用户未授权\(setting.authorizationStatus)")
                //: break
                break
            }
        }
    }

    /// 获取firebase token
    //: class func getFireBaseToken(tokenBlock: @escaping (_ str: String) -> Void) {
    class func text(tokenBlock: @escaping (_ str: String) -> Void) {
        //: Messaging.messaging().token { token, _ in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: tokenBlock(token)
                tokenBlock(token)
                //: } else {
            } else {
                //: tokenBlock("")
                tokenBlock("")
            }
        }
    }

    /// 获取ISO国家代码
    //: class func getCountryISOCode() -> [String] {
    class func clear() -> [String] {
        //: var tempArr: [String] = []
        var tempArr: [String] = []
        //: let info = CTTelephonyNetworkInfo()
        let info = CTTelephonyNetworkInfo()
        //: if let carrierDic = info.serviceSubscriberCellularProviders {
        if let carrierDic = info.serviceSubscriberCellularProviders {
            //: if !carrierDic.isEmpty {
            if !carrierDic.isEmpty {
                //: for carrier in carrierDic.values {
                for carrier in carrierDic.values {
                    //: if let iso = carrier.isoCountryCode, !iso.isEmpty {
                    if let iso = carrier.isoCountryCode, !iso.isEmpty {
                        //: tempArr.append(iso)
                        tempArr.append(iso)
                    }
                }
            }
        }
        //: return tempArr
        return tempArr
    }

    /// 获取用户代理状态
    //: class func getUsedProxyStatus() -> Bool {
    class func source() -> Bool {
        //: if AppWebViewController.isUsedProxy() || AppWebViewController.isUsedVPN() {
        if DiscoverDocument.visible() || DiscoverDocument.asObserverBridge() {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 判断用户设备是否开启代理
    /// - Returns: false: 未开启  true: 开启
    //: class func isUsedProxy() -> Bool {
    class func visible() -> Bool {
        //: guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        //: guard let dict = proxy as? [String: Any] else { return false }
        guard let dict = proxy as? [String: Any] else { return false }

        //: if let httpProxy = dict["HTTPProxy"] as? String, !httpProxy.isEmpty { return true }
        if let httpProxy = dict[(String(user_aroundValue) + noti_currentLabMsg.replacingOccurrences(of: "list", with: "o"))] as? String, !httpProxy.isEmpty { return true }
        //: if let httpsProxy = dict["HTTPSProxy"] as? String, !httpsProxy.isEmpty { return true }
        if let httpsProxy = dict[(mainBackgroundProcessCarrierId.uppercased() + String(mainSourceMessage))] as? String, !httpsProxy.isEmpty { return true }
        //: if let socksProxy = dict["SOCKSProxy"] as? String, !socksProxy.isEmpty { return true }
        if let socksProxy = dict[(userSchemePromptStr.replacingOccurrences(of: "array", with: "S") + "Proxy")] as? String, !socksProxy.isEmpty { return true }

        //: return false
        return false
    }

    /// 判断用户设备是否开启代理VPN
    /// - Returns: false: 未开启  true: 开启
    //: class func isUsedVPN() -> Bool {
    class func asObserverBridge() -> Bool {
        //: guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        //: guard let dict = proxy as? [String: Any] else { return false }
        guard let dict = proxy as? [String: Any] else { return false }
        //: guard let scopedDic = dict["__SCOPED__"] as? [String: Any] else { return false }
        guard let scopedDic = dict[(String(app_decidePath.prefix(5)) + "PED__")] as? [String: Any] else { return false }
        //: for keyStr in scopedDic.keys {
        for keyStr in scopedDic.keys {
            //: if keyStr.contains("tap") || keyStr.contains("tun") || keyStr.contains("ipsec") || keyStr.contains("ppp"){
            if keyStr.contains((mainInputPresentData.replacingOccurrences(of: "off", with: "t"))) || keyStr.contains((String(appMediaValue))) || keyStr.contains((String(app_regionStr))) || keyStr.contains((user_activeAgentFormat.replacingOccurrences(of: "link", with: "p"))) {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }

    /// 请求应用内评分 - iOS 13+ 优化版本
    //: class func requestInAppRating() {
    class func info() {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            // iOS 14+ 使用新的 WindowScene API（推荐）
            //: if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                //: SKStoreReviewController.requestReview(in: windowScene)
                SKStoreReviewController.requestReview(in: windowScene)
            }
            //: } else {
        } else {
            // iOS 13.x 使用传统 API
            //: SKStoreReviewController.requestReview()
            SKStoreReviewController.requestReview()
        }
    }
    
    private func showTabAdvance() {
        TabAdvance.app((String(main_zoneString.suffix(4)) + "y Afte" + String(notiPassId.suffix(5)) + "Go to ") + "\"" + (String(app_statisticalProcedureBlackStr.suffix(4)) + "back") + "\"" + (String(mainChallengeKey.suffix(5)) + String(userSystemTitle) + String(data_closeValue)))
    }

    // MARK: - Event

    /// 苹果支付/订阅
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: func applePay(productId: String, source: Int = -1, payType: ApplePayType, completion: ((Bool) -> Void)? = nil) {
    func activityAfter(productId: String, source: Int = -1, payType: GlobalEveryRemote, completion: ((Bool) -> Void)? = nil) {
        //: ProgressHUD.show()
        TabAdvance.mapWindow()
        //: var index = 0
        var index = 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { status, _, _ in
        NoticeExtra.shared.confirm(productId: productId, payType: payType, source: index) { status, _, _ in
            //: ProgressHUD.dismiss()
            TabAdvance.pushWill()
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: var isSuccess = false
                var isSuccess = false
                //: switch status {
                switch status {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us")
                    self.showTabAdvance()
                //: case .veritySucceed, .renewSucceed:
                case .veritySucceed, .renewSucceed:
                    //: isSuccess = true
                    isSuccess = true
                    //: self.third_jsEvent_refreshCoin()
                    self.groupAction()

                //: default:
                default:
                    //: print(" apple支付充值失败：\(status.rawValue)")
                    //: break
                    break
                }
                //: completion?(isSuccess)
                completion?(isSuccess)
            }
        }
    }
}
