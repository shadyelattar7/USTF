//
//  ViewController.swift
//  USTF
//
//  Created by SourceCode on 12/8/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit

class openingPageVC: UIViewController {

    @IBOutlet weak var continueAsStudent: UIButton!
    @IBOutlet weak var continueAsEmployee: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
   private func setupView()  {
        continueAsStudent.shadow()
        continueAsEmployee.shadow()
    }

    @IBAction func coutinueAsStudent_btn(_ sender: Any) {
        let logInVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC")
        
        self.navigationController?.pushViewController(logInVC, animated: true)
    }
    
    
    @IBAction func coutinueAsEmployee_btn(_ sender: Any) {
        let logInVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC")
        
        self.navigationController?.pushViewController(logInVC, animated: true)
    }
    
    @IBAction func continueAsGuset(_ sender: Any) {
        let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC")
        
        self.navigationController?.pushViewController(homeVC, animated: true)
        
    }
    
}

