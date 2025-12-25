
//: Declare String Begin

/*: "Net Error, Try again later" :*/
fileprivate let noti_challengeUsName:String = "black push previous string resultNet "
fileprivate let constCarrierValue:String = ", Trinfo action evaluate"
fileprivate let app_methodMakeString:String = "evaluation userin l"
fileprivate let appAcrossWillTitle:[Character] = ["a","t","e","r"]

/*: "data" :*/
fileprivate let main_userAlongName:[Character] = ["d","a","t","a"]

/*: ":null" :*/
fileprivate let k_fromOriginalUrl:String = "search present photo raw:null"

/*: "json error" :*/
fileprivate let noti_bridgeMessage:[Character] = ["j","s","o"]
fileprivate let constCountValue:String = "n errorreduce always trigger product log"

/*: "platform=iphone&version= :*/
fileprivate let mainUnitedStatesAdjustmentData:String = "plafull"
fileprivate let main_objectDecideData:String = "=iphlist report stop status"
fileprivate let appYourPleaseString:String = "vdocuments"
fileprivate let noti_fireName:String = "create device copyion="

/*: &packageId= :*/
fileprivate let app_ratingData:[Character] = ["&","p","a","c","k","a","g"]
fileprivate let main_atAroundUrl:String = "eId=object black frame"

/*: &bundleId= :*/
fileprivate let main_miserableTitle:String = "&"
fileprivate let const_disappearTitle:String = "bunnever"

/*: &lang= :*/
fileprivate let k_countAddResultMessage:String = "&lang=title false"

/*: ; build: :*/
fileprivate let dataTillData:String = "height file empty type local; build:"

/*: ; iOS  :*/
fileprivate let k_backgroundByString:[Character] = [";"," ","i","O","S"," "]

//: Declare String End

//: import Alamofire
import Alamofire
//: import CoreMedia
import CoreMedia
//: import HandyJSON
import HandyJSON
// __DEBUG__
// __CLOSE_PRINT__
//: import UIKit
import UIKit

//: typealias FinishBlock = (_ succeed: Bool, _ result: Any?, _ errorModel: AppErrorResponse?) -> Void
typealias FinishBlock = (_ succeed: Bool, _ result: Any?, _ errorModel: ToolChain?) -> Void

//: @objc class AppRequestTool: NSObject {
@objc class ScriptGrappleWrite: NSObject {
    /// 发起Post请求
    /// - Parameters:
    ///   - model: 请求参数
    ///   - completion: 回调
    //: class func startPostRequest(model: AppRequestModel, completion: @escaping FinishBlock) {
    class func view(model: ListenTagModel, completion: @escaping FinishBlock) {
        //: let serverUrl = self.buildServerUrl(model: model)
        let serverUrl = self.toDisappear(model: model)
        //: let headers = self.getRequestHeader(model: model)
        let headers = self.of(model: model)
        //: AF.request(serverUrl, method: .post, parameters: model.params, headers: headers, requestModifier: { $0.timeoutInterval = 10.0 }).responseData { [self] responseData in
        AF.request(serverUrl, method: .post, parameters: model.params, headers: headers, requestModifier: { $0.timeoutInterval = 10.0 }).responseData { [self] responseData in
            //: switch responseData.result {
            switch responseData.result {
            //: case .success:
            case .success:
                //: func__requestSucess(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                stop(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)

            //: case .failure:
            case .failure:
                //: completion(false, nil, AppErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: "Net Error, Try again later"))
                completion(false, nil, ToolChain(errorCode: LayerProvider.NetError.rawValue, errorMsg: (String(noti_challengeUsName.suffix(4)) + "Error" + String(constCarrierValue.prefix(4)) + "y aga" + String(app_methodMakeString.suffix(4)) + String(appAcrossWillTitle))))
            }
        }
    }

    //: class func func__requestSucess(model: AppRequestModel, response: HTTPURLResponse, responseData: Data, completion: @escaping FinishBlock) {
    class func stop(model: ListenTagModel, response: HTTPURLResponse, responseData: Data, completion: @escaping FinishBlock) {
        //: var responseJson = String(data: responseData, encoding: .utf8)
        var responseJson = String(data: responseData, encoding: .utf8)
        //: responseJson = responseJson?.replacingOccurrences(of: "\"data\":null", with: "\"data\":{}")
        responseJson = responseJson?.replacingOccurrences(of: "\"" + (String(main_userAlongName)) + "\"" + (String(k_fromOriginalUrl.suffix(5))), with: "" + "\"" + (String(main_userAlongName)) + "\"" + ":{}")
        //: if let responseModel = JSONDeserializer<AppBaseResponse>.deserializeFrom(json: responseJson) {
        if let responseModel = JSONDeserializer<StartCan>.deserializeFrom(json: responseJson) {
            //: if responseModel.errno == RequestResultCode.Normal.rawValue {
            if responseModel.errno == LayerProvider.Normal.rawValue {
                //: completion(true, responseModel.data, nil)
                completion(true, responseModel.data, nil)
                //: } else {
            } else {
                //: completion(false, responseModel.data, AppErrorResponse.init(errorCode: responseModel.errno, errorMsg: responseModel.msg ?? ""))
                completion(false, responseModel.data, ToolChain(errorCode: responseModel.errno, errorMsg: responseModel.msg ?? ""))
                //: switch responseModel.errno {
                switch responseModel.errno {
//                case LayerProvider.NeedReLogin.rawValue:
//                    NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                //: default:
                default:
                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: completion(false, nil, AppErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: "json error"))
            completion(false, nil, ToolChain(errorCode: LayerProvider.NetError.rawValue, errorMsg: (String(noti_bridgeMessage) + String(constCountValue.prefix(7)))))
        }
    }

    //: class func buildServerUrl(model: AppRequestModel) -> String {
    class func toDisappear(model: ListenTagModel) -> String {
        //: var serverUrl: String = model.requestServer
        var serverUrl: String = model.requestServer
        //: let otherParams = "platform=iphone&version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)&lang=\(UIDevice.interfaceLang)"
        let otherParams = (mainUnitedStatesAdjustmentData.replacingOccurrences(of: "full", with: "t") + "form" + String(main_objectDecideData.prefix(4)) + "one&" + appYourPleaseString.replacingOccurrences(of: "document", with: "er") + String(noti_fireName.suffix(4))) + "\(const_pushPath)" + (String(app_ratingData) + String(main_atAroundUrl.prefix(4))) + "\(mainWarnInsertRecordMessage)" + (main_miserableTitle.capitalized + const_disappearTitle.replacingOccurrences(of: "never", with: "d") + "leId=") + "\(data_sphereName)" + (String(k_countAddResultMessage.prefix(6))) + "\(UIDevice.interfaceLang)"
        //: if !model.requestPath.isEmpty {
        if !model.requestPath.isEmpty {
            //: serverUrl.append("/\(model.requestPath)")
            serverUrl.append("/\(model.requestPath)")
        }
        //: serverUrl.append("?\(otherParams)")
        serverUrl.append("?\(otherParams)")

        //: return serverUrl
        return serverUrl
    }

    /// 获取请求头参数
    /// - Parameter model: 请求模型
    /// - Returns: 请求头参数
    //: class func getRequestHeader(model: AppRequestModel) -> HTTPHeaders {
    class func of(model: ListenTagModel) -> HTTPHeaders {
        //: let userAgent = "\(AppName)/\(AppVersion) (\(AppBundle); build:\(AppBuildNumber); iOS \(UIDevice.current.systemVersion); \(UIDevice.modelName))"
        let userAgent = "\(notiNetMsg)/\(k_runId) (\(data_sphereName)" + (String(dataTillData.suffix(8))) + "\(show_needPushName)" + (String(k_backgroundByString)) + "\(UIDevice.current.systemVersion); \(UIDevice.modelName))"
        //: let headers = [HTTPHeader.userAgent(userAgent)]
        let headers = [HTTPHeader.userAgent(userAgent)]
        //: return HTTPHeaders(headers)
        return HTTPHeaders(headers)
    }
}
