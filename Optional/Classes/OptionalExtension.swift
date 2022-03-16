//
//  UIViewExtenstions.swift
//  AccessabilityIdExtenstions
//
//  Created by mohamed albohy on 07/07/2021.
//

import Foundation
public extension Optional where Wrapped == String {
    var orDefaultValue: String {
        return self ?? ""
    }
}

public extension Optional where Wrapped == Int {
    var orDefaultValue: Int {
        return self ?? 0
    }
}

public extension Optional where Wrapped == Date {
    var orDefaultValue: Date {
        return self ?? Date()
    }
}

public extension Optional where Wrapped == Bool {
    var orTrue: Bool {
        return self ?? true
    }
    
    var orFalse: Bool {
        return self ?? false
    }
}

public extension Optional where Wrapped == Any {
    var orDefaultValue: Any {
        return ""
    }
}
