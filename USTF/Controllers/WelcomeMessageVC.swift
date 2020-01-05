//
//  WelcomeMessageVC.swift
//  USTF
//
//  Created by SourceCode on 12/11/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit

class WelcomeMessageVC: UIViewController , UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WelcomeMessageCell", for: indexPath) as! WelcomeMessageCell
        
        return cell
    }
    


}
