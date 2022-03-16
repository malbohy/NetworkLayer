import UIKit

func getPostString(params: [String: Any]) -> String {
    var data = [String]()
    for(key, value) in params {
        data.append(key + "=\(value)")
    }
    return data.map { String($0) }.joined(separator: "&")
}
