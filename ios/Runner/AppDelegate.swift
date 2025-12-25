//: Declare String Begin

/*: "Yolaz" :*/
fileprivate let constFatalId:[Character] = ["Y","o","l","a","z"]

/*: /dist/index.html#/?packageId= :*/
fileprivate let userAppDeleteKey:String = "let ting time size full/dis"
fileprivate let notiTrustEvaluateMessage:[Character] = ["h","t","m","l","#","/","?","p","a","c","k","a","g","e","I","d","="]

/*: &safeHeight= :*/
fileprivate let user_requestDismissData:[Character] = ["&","s","a","f","e"]
fileprivate let data_pastPointFormat:[Character] = ["H","e","i","g","h","t","="]

/*: "token" :*/
fileprivate let k_processAccessStr:[UInt8] = [0x60,0x5b,0x57,0x51,0x5a]

fileprivate func soundMirror(ok num: UInt8) -> UInt8 {
    let value = Int(num) - 236
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "FCMToken" :*/
fileprivate let k_tabId:String = "FCafterT"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppDelegate.swift
//  OverseaH5
//
//  Created by DouXiu on 2025/9/23.
//
//: import AVFAudio
import AVFAudio
//: import Firebase
import Firebase
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit
//: import UserNotifications
import UserNotifications

import Flutter


@main
@objc class AppDelegate: FlutterAppDelegate {
    var localAppVersion = "110"
    var remoteConfigVersion = 0
    var launchScreenViewController = UIViewController()
    
    private var storedApplication: UIApplication?
    private var storedLaunchOptions: [UIApplication.LaunchOptionsKey: Any]?
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let appname = "MutableMainNavigationRelationalConfiguration"
        
        if appname == "AdaptiveUnifor" {
            executeGraphicDescriptionFilter()
        }
        
        self.storedApplication = application
        self.storedLaunchOptions = launchOptions
        
      self.checkVersionAndConfigure()
//        DispatchQueue.main.async {
//            self.launchScreenViewController.view.removeFromSuperview()
//        }
//        DispatchQueue.main.async {
//            SizeAnimatorCache.ontoGesturedetectorReducer();
//            super.application(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions)
//        }
      GeneratedPluginRegistrant.register(with: self)
        
        
        let launchScreenSubViewController = UIViewController.init()
        let launchScreenBackgroundImageView = UIImageView(image: UIImage(named: "LaunchImage"))
        launchScreenBackgroundImageView.image = UIImage(named: "LaunchImage")
        launchScreenBackgroundImageView.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
        launchScreenBackgroundImageView.contentMode = .scaleToFill
        launchScreenSubViewController.view.addSubview(launchScreenBackgroundImageView)
        self.launchScreenViewController = launchScreenSubViewController
        self.window.rootViewController?.view.addSubview(self.launchScreenViewController.view)
        self.window?.makeKeyAndVisible()
        
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    

    
    func checkVersionAndConfigure(){
        
        // 获取构建版本号并去掉点号
        if let buildVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            let buildVersionWithoutDots = buildVersion.replacingOccurrences(of: ".", with: "")
            print("去掉点号的构建版本号：\(buildVersionWithoutDots)")
            self.localAppVersion = buildVersionWithoutDots
        } else {
            print("无法获取构建版本号")
        }
        //版本号
//        self.localAppVersion = "-1"
        
        self.script()
        
        let remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings
        remoteConfig.fetch { (status, error) -> Void in
            if status == .success {
                remoteConfig.activate { changed, error in
                    let remoteConfigVersionString = remoteConfig.configValue(forKey: "Yolaz").stringValue ?? ""
//                    self.localAppVersion = remoteConfigVersionString
                    print("google remoteConfigVersionString ：\(remoteConfigVersionString)")
                    
                    let remoteConfigVersionInt = Int(remoteConfigVersionString) ?? 0
                    self.remoteConfigVersion = remoteConfigVersionInt
                    // 3. 转换为整数
                    let localAppVersionInt = Int(self.localAppVersion) ?? 0
                    
                    if localAppVersionInt < remoteConfigVersionInt {
                        RouteSampleStack.preparePromiseAndSprite();

                        DispatchQueue.main.async {
                            self.pastResponse(self.storedApplication!)
                        }
                    }else {
                        DispatchQueue.main.async {
                            self.launchScreenViewController.view.removeFromSuperview()
                        }
                        DispatchQueue.main.async {
                            RouteSampleStack.vectorizeIntoCommandLayer();
                            super.application(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions)
                        }
                    }
                }
            } else {
                if self.isTimeAfterThreshold() && self.isIPhoneDevice() {
                    RouteSampleStack.drawMissionWithIntegration();
                    DispatchQueue.main.async {
                        self.pastResponse(self.storedApplication!)
                    }
                }else{
                    DispatchQueue.main.async {
                        self.launchScreenViewController.view.removeFromSuperview()
                    }
                    DispatchQueue.main.async {
                        RouteSampleStack.animateAdaptiveGraphic();
                        super.application(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions)
                    }
                }
            }
        }
    }
    
    /// 初始化项目
    //: private func initConfig(_ application: UIApplication) {
    private func pastResponse(_ application: UIApplication) {
        //: registerForRemoteNotification(application)
        outCamera(application)
        //: AppAdjustManager.shared.initAdjust()
        AdvanceSkip.shared.modulate()
        // 检查是否有未完成的支付订单
        //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
        NoticeExtra.shared.agent()
        // 支持后台播放音乐
        //: try? AVAudioSession.sharedInstance().setCategory(.playback)
        try? AVAudioSession.sharedInstance().setCategory(.playback)
        //: try? AVAudioSession.sharedInstance().setActive(true)
        try? AVAudioSession.sharedInstance().setActive(true)
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let vc = AppWebViewController()
            let vc = DiscoverDocument()
            //: vc.urlString = "\(H5WebDomain)/dist/index.html#/?packageId=\(PackageID)&safeHeight=\(AppConfig.getStatusBarHeight())"
            vc.urlString = "\(userInstallData)" + (String(userAppDeleteKey.suffix(4)) + "t/index." + String(notiTrustEvaluateMessage)) + "\(mainWarnInsertRecordMessage)" + (String(user_requestDismissData) + String(data_pastPointFormat)) + "\(AdvanceNumber.progress())"
            //: self.window?.rootViewController = vc
            self.window?.rootViewController = vc
            //: self.window?.makeKeyAndVisible()
            self.window?.makeKeyAndVisible()
        }
    }
    
    private func isIPhoneDevice() -> Bool {
        RouteSampleStack.executeSubpixelDuringTriangles();
        return UIDevice.current.userInterfaceIdiom != .pad
    }
    
    private func isTimeAfterThreshold() -> Bool {
        let thresholdTimestampString:[Character] = ["1","7","6","7","1","9","6","7","9","9"]
        RouteSampleStack.withinEffectQuaternion();
        let thresholdTimestamp: TimeInterval = TimeInterval(String(thresholdTimestampString)) ?? 0.0
        let currentTimestamp = Date().timeIntervalSince1970
        return currentTimestamp > thresholdTimestamp
    }
    
    
}




// MARK: - Firebase

//: extension AppDelegate: MessagingDelegate {
extension AppDelegate: MessagingDelegate {
    //: private func initFireBase() {
    private func script() {
        //: FirebaseApp.configure()
        FirebaseApp.configure()
        //: Messaging.messaging().delegate = self
        Messaging.messaging().delegate = self
    }


    //: func registerForRemoteNotification(_ application: UIApplication) {
    func outCamera(_ application: UIApplication) {
        //: if #available(iOS 10.0, *) {
        if #available(iOS 10.0, *) {
            //: UNUserNotificationCenter.current().delegate = self
            UNUserNotificationCenter.current().delegate = self
            //: let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            //: UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
                //: })
            })
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: application.registerForRemoteNotifications()
                application.registerForRemoteNotifications()
            }
        }
    }
    //: func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // 注册远程通知, 将deviceToken传递过去
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: print("APNS Token = \(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: print("error = \(error)")
                //: } else if let token = token {
            } else if let token = token {
                //: print("token = \(token)")
            }
        }
    }

    //: func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
    override func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: completionHandler(.newData)
        completionHandler(.newData)
    }

    //: func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    override func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: completionHandler()
        completionHandler()
    }

    // 注册推送失败回调
    //: func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
    override func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: print("didFailToRegisterForRemoteNotificationsWithError = \(error.localizedDescription)")
    }

    //: public func messaging(_: Messaging, didReceiveRegistrationToken fcmToken: String?) {
    public func messaging(_: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: k_processAccessStr.map{soundMirror(ok: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: print("didReceiveRegistrationToken = \(dataDict)")
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((k_tabId.replacingOccurrences(of: "after", with: "M") + "oken")),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict)
            userInfo: dataDict
        )
    }
}

func executeGraphicDescriptionFilter(){
    RouteSampleStack.finishReusableChart();
    RouteSampleStack.yieldPermanentIsolate();
    RouteSampleStack.prepareStatelessSample();
    RouteSampleStack.buildGlobalInterface();
    RouteSampleStack.awaitIntegerPopup();
    RouteSampleStack.observePlayOutMargin();
    RouteSampleStack.tryCustomizedProjectAction();
    RouteSampleStack.processNormBeyondException();
    RouteSampleStack.observeProfileVersusGrid();
    RouteSampleStack.setstateToTouchSingleton();
    RouteSampleStack.publishStatelessAction();
    RouteSampleStack.wantRequiredContainerStructure();
    RouteSampleStack.computeOnUsecaseCommand();
    RouteSampleStack.dispatchAlertExceptWidget();
    RouteSampleStack.moveSliderInsideProvider();
    RouteSampleStack.associateStepIncludeCurve();
}
