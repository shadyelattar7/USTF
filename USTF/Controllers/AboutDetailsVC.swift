//
//  AboutDetailsVC.swift
//  USTF
//
//  Created by SourceCode on 12/10/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit

class AboutDetailsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutTableViewCell", for: indexPath) as! AboutTableViewCell
        
        return cell
    }
    

}
