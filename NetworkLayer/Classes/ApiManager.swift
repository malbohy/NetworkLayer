import Foundation

public class ApiManager {
    
    public class func execute(url: String ,
                              httpMethod: HTTPMethodType ,
                              bodyData: Data? ,
                              headersDic: [String: String]?,
                              requestIndex: Int = 0,
                              successHandler: @escaping ApiSuccessClosure,
                              failureHandler: @escaping ApiFailureClosure) {
        ApiManager.execute(url: url,
                           httpMethod: httpMethod ,
                           bodyData: bodyData ,
                           jsonBodyDicObj: nil,
                           bodyArr: nil,
                           formDataDicObj: nil,
                           headersDic: headersDic,
                           requestIndex: requestIndex,
                           successHandler: { (successResult) in
            successHandler(successResult)
        }) { (failureResult) in
            failureHandler(failureResult)
        }
        
    }
    
    public class func execute(url: String ,
                              httpMethod: HTTPMethodType ,
                              jsonBodyDicObj: [String: Any]? ,
                              headersDic: [String: String]?,
                              requestIndex: Int = 0,
                              successHandler: @escaping ApiSuccessClosure,
                              failureHandler: @escaping ApiFailureClosure) {
        ApiManager.execute(url: url,
                           httpMethod: httpMethod,
                           jsonBodyDicObj: jsonBodyDicObj,
                           bodyArr: nil,
                           formDataDicObj: nil,
                           headersDic: headersDic,
                           requestIndex: requestIndex,
                           successHandler: { (successResult) in
            successHandler(successResult)
        }) { (failureResult) in
            failureHandler(failureResult)
        }
        
    }
    
    public class func execute(url: String,
                              httpMethod: HTTPMethodType ,
                              bodyArr: [Any]? ,
                              headersDic: [String: String]?,
                              requestIndex: Int = 0,
                              successHandler: @escaping ApiSuccessClosure,
                              failureHandler: @escaping ApiFailureClosure) {
        ApiManager.execute(url: url,
                           httpMethod: httpMethod,
                           jsonBodyDicObj: nil,
                           bodyArr: bodyArr,
                           formDataDicObj: nil,
                           headersDic: headersDic,
                           requestIndex: requestIndex,
                           successHandler: { (successResult) in
            successHandler(successResult)
        }) { (failureResult) in
            failureHandler(failureResult)
        }
        
    }
    
    public class func execute(url: String ,
                              httpMethod: HTTPMethodType ,
                              formDataDicObj: [String: Any]? ,
                              headersDic: [String: String]?,
                              requestIndex: Int = 0,
                              successHandler: @escaping ApiSuccessClosure,
                              failureHandler: @escaping ApiFailureClosure) {
        
        ApiManager.execute(url: url,
                           httpMethod: httpMethod,
                           jsonBodyDicObj: nil,
                           bodyArr: nil,
                           formDataDicObj: formDataDicObj,
                           headersDic: headersDic,
                           requestIndex: requestIndex,
                           successHandler: { (successResult) in
            successHandler(successResult)
        }) { (failureResult) in
            failureHandler(failureResult)
            
        }
    }
    
    private class func execute(url: String ,
                               httpMethod: HTTPMethodType ,
                               bodyData: Data? = nil ,
                               jsonBodyDicObj: [String: Any]?,
                               bodyArr: [Any]?,
                               formDataDicObj: [String: Any]?,
                               headersDic: [String: String]?,
                               requestIndex: Int,
                               successHandler: @escaping ApiSuccessClosure,
                               failureHandler: @escaping ApiFailureClosure) {
        var urlAsKey = url
        if httpMethod == .get {
            urlAsKey = urlAsKey.components(separatedBy: "?").first ?? ""
        }
        let headers: [String: String] = [:]
        
        if jsonBodyDicObj != nil {
            ExecuteTask.execute(url: url,
                                httpMethod: httpMethod,
                                jsonBodyDicObj: jsonBodyDicObj,
                                headersDic: headers,
                                requestIndex: requestIndex,
                                successHandler: { (successResult) in
                successHandler(successResult)
            }, failureHandler: { (failureResult) in
                if let _ = failureResult.urlErrorCode {
                    failureHandler(failureResult)
                } else {
                    failureHandler(failureResult)
                }
            })
        } else if formDataDicObj != nil {
            ExecuteTask.execute(url: url,
                                httpMethod: httpMethod,
                                formDataDicObj: formDataDicObj,
                                headersDic: headers,
                                requestIndex: requestIndex,
                                successHandler: { (successResult) in
                successHandler(successResult)
            }, failureHandler: { (failureResult) in
                if let _ = failureResult.urlErrorCode {
                    failureHandler(failureResult)
                } else {
                    failureHandler(failureResult)
                }
            })
        } else if bodyArr != nil {
            ExecuteTask.execute(url: url,
                                httpMethod: httpMethod,
                                bodyArr: bodyArr,
                                headersDic: headers,
                                requestIndex: requestIndex,
                                successHandler: { (successResult) in
                successHandler(successResult)
            }, failureHandler: { (failureResult) in
                if let _ = failureResult.urlErrorCode {
                    failureHandler(failureResult)
                } else {
                    failureHandler(failureResult)
                }
            })
            
        } else if bodyData != nil {
            ExecuteTask.execute(url: url,
                                httpMethod: httpMethod,
                                bodyData: bodyData,
                                headersDic: headers,
                                requestIndex: requestIndex,
                                successHandler: { (successResult) in
                successHandler(successResult)
            }, failureHandler: { (failureResult) in
                failureHandler(failureResult)
            })
        } else {
            print("=============================NetworkLayer Error======================\nYour request hasn't been executed")
        }
    }
}
