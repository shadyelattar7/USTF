//
//  Alart.swift
//  USTF
//
//  Created by SourceCode on 12/15/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlert(title: String, massage: String)  {
        
        let actionAlert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        actionAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(actionAlert, animated: true, completion: nil)
    }
}
