//
//  ProgramsCollView.swift
//  USTF
//
//  Created by SourceCode on 12/9/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit


class ProgramsCollView: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    var iconName: [String] = [
    "College of Enfineering and Information Techhnology",
    "College of Architecture,Art and Design",
    "College of Mass Communication",
    "College of Humanities and Sciences",
    "College of Business Administration",
    "College of Dentistry",
    "College of pharmacy and Health Sciences",
    "College of Law",
    ]
    
    var image: [UIImage] = [
    UIImage(named: "1")!,
    UIImage(named: "2")!,
    UIImage(named: "3")!,
    UIImage(named: "4")!,
    UIImage(named: "5")!,
    UIImage(named: "6")!,
    UIImage(named: "7")!,
    UIImage(named: "8")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton"), style: .plain, target: self, action: #selector(back_btn))

    }

    @objc func back_btn(){
        self.navigationController?.popViewController(animated: true)
    }
    
   private func setupView()  {
    
    let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
    layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 0, right: 5)
    layout.minimumLineSpacing = 5
    layout.minimumInteritemSpacing = 0
    
    self.navigationItem.title = "Programs"
        
    }
    
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return image.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProgramsCollViewCell", for: indexPath) as! ProgramsCollViewCell
    
        cell.icon_img.image = image[indexPath.row]
        cell.name_lbl.text = iconName[indexPath.row]
        return cell
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let engineeringScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            engineeringScr.urls = "http://www.ustf.ac.ae/en/engineering.html"
            self.navigationController?.pushViewController(engineeringScr, animated: true)
        case 1:
            let  architectureScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            architectureScr.urls = "http://www.ustf.ac.ae/en/cad.html"
            self.navigationController?.pushViewController(architectureScr, animated: true)
        case 2:
            let communicationScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            communicationScr.urls = "http://www.ustf.ac.ae/en/masscom.html"
            self.navigationController?.pushViewController(communicationScr, animated: true)
        case 3:
            let humanitiesScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            humanitiesScr.urls = "http://www.ustf.ac.ae/en/chs.html"
            self.navigationController?.pushViewController(humanitiesScr, animated: true)
        case 4:
            let businessAdministrationScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            businessAdministrationScr.urls = "http://www.ustf.ac.ae/en/cba.html"
            self.navigationController?.pushViewController(businessAdministrationScr, animated: true)
        case 5:
            let dentistryScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            dentistryScr.urls = "http://www.ustf.ac.ae/en/dentistry.html"
            self.navigationController?.pushViewController(dentistryScr, animated: true)
        case 6:
            let pharmacyScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            pharmacyScr.urls = "http://www.ustf.ac.ae/en/pharmacy.html"
            self.navigationController?.pushViewController(pharmacyScr, animated: true)
        case 7:
            let lawScr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewVC") as! WebViewVC
            lawScr.urls = "http://www.ustf.ac.ae/en/law.html"
            self.navigationController?.pushViewController(lawScr, animated: true)
        default:
            print("error")
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            if let cell = collectionView.cellForItem(at: indexPath) as? ProgramsCollViewCell {
                cell.transform = .init(scaleX: 0.95, y: 0.95)
                cell.contentView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
            }
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            if let cell = collectionView.cellForItem(at: indexPath) as? ProgramsCollViewCell {
                cell.transform = .identity
                cell.contentView.backgroundColor = .clear
            }
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        let itemWidth = ( (collectionView.frame.width - layout.sectionInset.left - layout.sectionInset.right) / 2) -
        4
        return CGSize(width: itemWidth, height: 200)
    }
}
