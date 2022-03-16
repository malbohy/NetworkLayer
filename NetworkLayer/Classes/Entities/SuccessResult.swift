import Foundation

public struct SuccessResult {
    public var requestIndex: Int?
    public var response: Any?
    
    init(response: Any?, requestIndex: Int?) {
        self.response = response
        self.requestIndex = requestIndex
    }
}
