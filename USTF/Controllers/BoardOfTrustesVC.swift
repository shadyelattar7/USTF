//
//  BoardOfTrustesVC.swift
//  USTF
//
//  Created by SourceCode on 12/11/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit

class BoardOfTrustesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoardOfTrustesTableViewCell", for: indexPath) as! BoardOfTrustesTableViewCell
        
        return cell
    }
    

   

}
