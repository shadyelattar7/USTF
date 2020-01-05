//
//  LoginVC.swift
//  USTF
//
//  Created by SourceCode on 12/9/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var login_btn: UIButton!
    @IBOutlet weak var email_tf: UITextField!
    @IBOutlet weak var password_tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        login_btn.shadow()
        email_tf.shadow()
        password_tf.shadow()

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton"), style: .plain, target: self, action: #selector(back_btn))

        
    }
    
    @objc func back_btn(){
        self.navigationController?.popViewController(animated: true)
    }
    


    @IBAction func checkRemember_btn(_ sender: Any) {
        
    }
    
    @IBAction func login_btn(_ sender: Any) {
        
    }
}
