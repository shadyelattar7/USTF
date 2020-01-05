//
//  Shadow.swift
//  USTF
//
//  Created by SourceCode on 12/9/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func shadow()  {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}


extension UITextField{
    
    func shadow(){
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowColor = UIColor.gray.cgColor
    }
}
