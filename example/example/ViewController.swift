//
//  ViewController.swift
//  example
//
//  Created by mohamed albohy on 06/07/2021.
//

import UIKit
import Extenstions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    func showAlert(with title: String? = nil, message: String?, preferredStyle: UIAlertController.Style = .alert,
                   buttonsTitles: [String] = ["OK"], completion: @escaping (Int) -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        
        for (index, title) in buttonsTitles.enumerated() {
            let style: UIAlertAction.Style = title == "Cancel" ? .cancel : .default
            let action = UIAlertAction(title: title, style: style) { (_) in
                completion(index)
            }
            action.accessibilityIdentifier = "640ef81c-b7bf-\(index)"
            alert.addAction(action)
        }
        
//        alert.setActions(baseAccessabilityId: "640ef81c-b7bf")
        
        
        
        
        self.present(alert, animated: true, completion: nil)
    }


}

