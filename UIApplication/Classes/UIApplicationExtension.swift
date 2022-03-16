//
//  UIViewExtenstions.swift
//  AccessabilityIdExtenstions
//
//  Created by mohamed albohy on 07/07/2021.
//

import Foundation
import UIKit

public extension UIApplication {
    func getTopViewController() -> UIViewController? {
        var topController: UIViewController? = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController
        while topController?.presentedViewController != nil {
            topController = topController?.presentedViewController
        }
        return topController
    }
}
