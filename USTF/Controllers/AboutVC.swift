//
//  AboutVC.swift
//  USTF
//
//  Created by SourceCode on 12/10/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit
import CarbonKit

class AboutVC: UIViewController, CarbonTabSwipeNavigationDelegate {
    
    let items = ["About", "Board of Trustees", "Welcome Message","Vision and Values","USTF Organization Chart","Accreditation and Licensure"]
    @IBOutlet weak var targetView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items, delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self, andTargetView: targetView)
        self.style(carbonTabSwipeNavigation: carbonTabSwipeNavigation)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton"), style: .plain, target: self, action: #selector(back_btn))

   
    }
    
    @objc func back_btn(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {

        if index == 0{
          let screen = self.storyboard?.instantiateViewController(withIdentifier: "AboutDetailsVC") as! AboutDetailsVC
          return screen
        }
        if index == 1 {
            let screen2 = self.storyboard?.instantiateViewController(withIdentifier: "BoardOfTrustesVC") as! BoardOfTrustesVC
            return screen2
        }
        
        if index == 2{
            let screen3 = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeMessageVC") as! WelcomeMessageVC
            return screen3
        }
        
        let screen = self.storyboard?.instantiateViewController(withIdentifier: "AboutDetailsVC") as! AboutDetailsVC
        return screen
  }
    
    func style(carbonTabSwipeNavigation:CarbonTabSwipeNavigation) {
        let color: UIColor = #colorLiteral(red: 0.07843137255, green: 0.2196078431, blue: 0.4980392157, alpha: 1)
        carbonTabSwipeNavigation.toolbar.isTranslucent = false
        carbonTabSwipeNavigation.setIndicatorColor(color)
        carbonTabSwipeNavigation.carbonSegmentedControl?.backgroundColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        carbonTabSwipeNavigation.setCurrentTabIndex(UInt(0),withAnimation: true)
        carbonTabSwipeNavigation.setSelectedColor(color, font: UIFont.systemFont(ofSize: 19))
        carbonTabSwipeNavigation.setNormalColor(#colorLiteral(red: 0.07843137255, green: 0.2196078431, blue: 0.4980392157, alpha: 1), font: UIFont.systemFont(ofSize: 19))
        carbonTabSwipeNavigation.setTabExtraWidth(10)
        carbonTabSwipeNavigation.setTabBarHeight(53)
        for i in 0..<self.items.count{
            let tabWidth=Double(self.view.frame.width)/2
            carbonTabSwipeNavigation.carbonSegmentedControl?.setWidth(CGFloat(tabWidth), forSegmentAt: i)
        }
    }
    

}
