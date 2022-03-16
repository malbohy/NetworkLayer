import Foundation
public struct FailureResult {
    public var statusCode: Int?
    public var urlErrorCode: URLError.Code?
    public var response: Any?
    public var error: Error?   // any other or unknown
    public var requestIndex: Int?
    
    init(error: Error, requestIndex: Int) {
        self.error = error
        self.requestIndex = requestIndex
        response = nil
        statusCode = nil
        urlErrorCode = nil
    }
    
    init(urlErrorCode: URLError.Code, requestIndex: Int) {
        self.urlErrorCode = urlErrorCode
        self.requestIndex = requestIndex
        response = nil
        statusCode = nil
        error = nil
    }
    
    init(response: Any?, statusCode: Int?, requestIndex: Int) {
        self.response = response
        self.statusCode = statusCode
        self.requestIndex = requestIndex
        urlErrorCode = nil
        error = nil
    }
}
