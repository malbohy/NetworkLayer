import UIKit

class ExecuteTask {
    
    class func execute(url: String ,
                       httpMethod: HTTPMethodType ,
                       bodyData: Data? ,
                       headersDic: [String: String]?,
                       requestIndex: Int,
                       successHandler: @escaping ApiSuccessClosure,
                       failureHandler: @escaping ApiFailureClosure) {
        
        ExecuteTask.execute(url: url,
                            httpMethod: httpMethod,
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
    
    class func execute(url: String ,
                       httpMethod: HTTPMethodType ,
                       jsonBodyDicObj: [String: Any]? ,
                       headersDic: [String: String]?,
                       requestIndex: Int,
                       successHandler: @escaping ApiSuccessClosure,
                       failureHandler: @escaping ApiFailureClosure) {
        
        ExecuteTask.execute(url: url,
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
    
    class func execute(url: String,
                       httpMethod: HTTPMethodType ,
                       formDataDicObj: [String: Any]? ,
                       headersDic: [String: String]?,
                       requestIndex: Int,
                       successHandler: @escaping ApiSuccessClosure,
                       failureHandler: @escaping ApiFailureClosure) {
        
        ExecuteTask.execute(url: url,
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
    
    class func execute(url: String,
                       httpMethod: HTTPMethodType,
                       bodyArr: [Any]?,
                       headersDic: [String: String]?,
                       requestIndex: Int,
                       successHandler: @escaping ApiSuccessClosure,
                       failureHandler: @escaping ApiFailureClosure) {
        
        ExecuteTask.execute(url: url,
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
    
    private class func execute(url: String ,
                               httpMethod: HTTPMethodType,
                               bodyData: Data? = nil,
                               jsonBodyDicObj: [String: Any]?,
                               bodyArr: [Any]?,
                               formDataDicObj: [String: Any]? = [:],
                               headersDic: [String: String]?,
                               requestIndex: Int,
                               successHandler: @escaping ApiSuccessClosure,
                               failureHandler: @escaping ApiFailureClosure) {
        
        var urlComponents = URLComponents(string: url)!
        if httpMethod == .get {
            var params: [String: Any] = [:]
            
            if formDataDicObj != nil {
                params = formDataDicObj!
            } else if jsonBodyDicObj != nil {
                params = jsonBodyDicObj!
            }
            
            if urlComponents.queryItems == nil {
                urlComponents.queryItems = []
            }
            for(key, value) in params {
                urlComponents.queryItems?.append(URLQueryItem(name: key, value: value as? String))
            }
        }
        
        var requestURL = urlComponents.url!
        let requestPath = requestURL.absoluteString.replacingOccurrences(of: "+", with: "%2B")
        requestURL = URL(string: requestPath) ?? requestURL
        
        var request  = URLRequest(url: requestURL)
        request.httpMethod = httpMethod.rawValue
        request.allHTTPHeaderFields = headersDic
        
        if httpMethod != .get {
            do {
                if let jsonBodyDicObj = jsonBodyDicObj {
                    request.httpBody =  try JSONSerialization.data(withJSONObject: jsonBodyDicObj, options: .prettyPrinted)
                } else if let formDataDicObj = formDataDicObj {
                    request.httpBody = getPostString(params: formDataDicObj).data(using: .utf8) ?? Data()
                } else if let bodyArr = bodyArr {
                    request.httpBody = try JSONSerialization.data(withJSONObject: bodyArr)
                } else if let bodyData = bodyData {
                    request.httpBody = bodyData
                }
            } catch {
                print(error.localizedDescription)
            }
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error as? URLError {
                DispatchQueue.main.async {
                    failureHandler(FailureResult(urlErrorCode: error.code, requestIndex: requestIndex))
                }
            } else if let data = data,
                let responseObj = response as? HTTPURLResponse {
                if responseObj.statusCode == 401 {
                    DispatchQueue.main.async {
                        failureHandler(FailureResult(response: responseObj, statusCode: responseObj.statusCode, requestIndex: requestIndex))
                    }
                } else {
                    if 200 ... 299 ~= responseObj.statusCode {
                        DispatchQueue.main.async {
                            successHandler(SuccessResult(response: data, requestIndex: requestIndex))
                        }
                    } else {
                        DispatchQueue.main.async {
                            failureHandler(FailureResult(response: data, statusCode: responseObj.statusCode, requestIndex: requestIndex))
                        }
                    }
                }
                
            }
        }
        task.resume()
    }
    
}
