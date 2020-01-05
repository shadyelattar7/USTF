//
//  HomeVC.swift
//  USTF
//
//  Created by SourceCode on 12/8/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var viewX: UIView!
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var collectionV: UICollectionView!
    
    var iconName: [String] = ["Programs","Admissions","Acadmics","Virtual Tour","Why USTF","News","E_Learning","Career","Student Protal","Staff Portal","Links","Events","About","Contact Us","Settings"]
    
    var icons: [UIImage] = [
    UIImage(named: "1_programs" )!,
    UIImage(named: "2_admissions")!,
    UIImage(named: "3_acdmics")!,
    UIImage(named: "4_virtual_tour")!,
    UIImage(named: "5_why_USFT")!,
    UIImage(named: "6_news")!,
    UIImage(named: "7_e_learning")!,
    UIImage(named: "8_career")!,
    UIImage(named: "9_student_portal")!,
    UIImage(named: "10_staff_portal")!,
    UIImage(named: "11_links")!,
    UIImage(named: "12_events")!,
    UIImage(named: "13_adout")!,
    UIImage(named: "14_contact_us")!,
    UIImage(named: "15_settings")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewX.layer.cornerRadius = 10
        viewBackground.layer.cornerRadius = 30
        setLayout()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton"), style: .plain, target: self, action: #selector(back_btn))
        
    }
    
    
    @objc func back_btn(){
        self.navigationController?.popViewController(animated: true)
    }
    
    func setLayout()  {
        let layout = self.collectionV.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 23, bottom: 0, right: 23)
       //   layout.sectionInset = UIEdgeInsets(top: 0, left: collectionV.frame.size.width / 40, bottom: 0, right: collectionV.frame.size.width / 40)
      //  layout.minimumLineSpacing = 5
       // layout.minimumInteritemSpacing = 0
//        layout.itemSize = CGSize(width: (self.collectionV.frame.size.width - 20 ) / 3, height: self.collectionV.frame.size.height / 3)
     //   layout.minimumInteritemSpacing = 5
      //  layout.minimumLineSpacing = 5
       // layout.itemSize = CGSize(width: 110, height: 110)

    }

    @IBAction func applyNow_btn(_ sender: Any) {
        
        let admissions = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
        admissions.urls = "http://admissions.ustf.ac.ae/"
        self.navigationController?.pushViewController(admissions, animated: true)
    }
    
}
extension HomeVC: UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
    
        cell.Icon_img.image = icons[indexPath.row]
        cell.iconName_lbl.text = iconName[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let programsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProgramsCollView")
            self.navigationController?.pushViewController(programsVC, animated: true)
            
        case 1:
            let admissions = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            admissions.urls = "http://admissions.ustf.ac.ae/"
            self.navigationController?.pushViewController(admissions, animated: true)
        case 2:
            let academics = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            academics.urls = "http://www.ustf.ac.ae/en/academics/"
            self.navigationController?.pushViewController(academics, animated: true)
          case 3:
            let virtual = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            virtual.urls = "http://www.ustf.ac.ae/virtual/index.html"
            self.navigationController?.pushViewController(virtual, animated: true)
          case 4:
            let why_ustf = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            why_ustf.urls = "http://www.ustf.ac.ae/en/why-ustf"
            self.navigationController?.pushViewController(why_ustf, animated: true)
          case 5:
            let news = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            news.urls = "http://www.ustf.ac.ae/en/news.html"
            self.navigationController?.pushViewController(news, animated: true)
          case 6:
            let login = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            login.urls = "https://learn.ustf.ac.ae/login/index.php"
            self.navigationController?.pushViewController(login, animated: true)
          case 7:
            let career = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            career.urls = "http://www.ustf.ac.ae/en/career.html"
            self.navigationController?.pushViewController(career, animated: true)
         case 8:
            let students = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            students.urls = "http://students.ustf.ac.ae/"
            self.navigationController?.pushViewController(students, animated: true)
         case 9:
            let staff = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            staff.urls = "http://staff.ustf.ac.ae/"
            self.navigationController?.pushViewController(staff, animated: true)
         case 10:
            let linksVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LinksCollView")
            self.navigationController?.pushViewController(linksVC, animated: true)
//       case 11:
        case 12:
            let about = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutVC") as! AboutVC
            self.navigationController?.pushViewController(about, animated: true)
        case 13:
            let contactUs = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            contactUs.urls = "http://www.ustf.ac.ae/en/contact-us.html"
            self.navigationController?.pushViewController(contactUs, animated: true)
        default:
            print("Error switch case HomeVC")
        }
        
    }
    
     func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            if let cell = collectionView.cellForItem(at: indexPath) as? HomeCell {
                cell.transform = .init(scaleX: 0.95, y: 0.95)
                cell.contentView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
            }
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = self.collectionV.collectionViewLayout as! UICollectionViewFlowLayout
        let layouto = (collectionView.frame.width - layout.sectionInset.left -  layout.sectionInset.right - (layout.minimumInteritemSpacing*2) )
        
        let itemWidth = ( layouto / 3)
        let itemHeight = CGFloat(50)
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let itemWidth = ( collectionView.frame.width / 3) - 4
//        let itemHeight = CGFloat(50)
//        return CGSize(width: itemWidth, height: itemHeight)
//    }
    
     func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            if let cell = collectionView.cellForItem(at: indexPath) as? HomeCell {
                cell.transform = .identity
                cell.contentView.backgroundColor = .clear
            }
        }
    }
}
