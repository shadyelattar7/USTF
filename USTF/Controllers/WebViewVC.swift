//
//  WebViewVC.swift
//  USTF
//
//  Created by SourceCode on 12/9/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    var urls: String?
    
    @IBOutlet weak var webView_wv: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: urls!)
        let request = URLRequest(url: url!)
        webView_wv.load(request)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton"), style: .plain, target: self, action: #selector(back_btn))

    }
    
    @objc func back_btn(){
        self.navigationController?.popViewController(animated: true)
    }
    
  
}
