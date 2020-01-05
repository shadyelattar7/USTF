//
//  LinksCollView.swift
//  USTF
//
//  Created by SourceCode on 12/9/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import UIKit
import SDWebImage

class LinksCollView: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var links: [Links] = []
    
    var cellLabel: [String] = [
        "Legal Advisor",
        "Office of institutional planning and Effectiveness",
        "internal Auditor",
        "office of Community Engagement",
        "Deanship of Student Affaris",
        "Student Housing",
        "Council for Acdemic Affairs",
        "Training Center",
        "Office of Career Counseling",
        "Continuing Education Center",
        "Office of Alumni",
        "Deanship pf Graduate Studies and Research",
        "Office of Admission and Registration",
        "Library and Learning Resources",
        "Office of international Academic Affairs",
        "Office of Finance ",
        "Office of Budget and Planning",
        "Office of Procurement",
        "Office of Scholarship and Financial",
        "Office Of Unversity and Facilities",
        "Documentation Center",
        "Office of Development and Sustaninability",
        "Office of Human Resources",
        "Office of Puplic Relations",
        "Office of Marketing and Communication",
        "Office of Medical Service",
        "Office of Information Technology",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
        self.navigationItem.title = "Links"

       
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton"), style: .plain, target: self, action: #selector(back_btn))
        
        fetchData()

    }
    
    func fetchData(){
        APIManager.link { (error, linkss) in
            if let error = error{
                self.showAlert(title: "Sorry", massage: error)
                
            }else if let linkX = linkss{
                self.links = linkX
                self.collectionView.reloadData()
            }
        }

    }

    @objc func back_btn(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func setView()  {
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 0, right: 5)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 110, height: 110)
    }

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return links.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LinksCollViewCell", for: indexPath) as! LinksCollViewCell
    
        if let iconImgUrl = links[indexPath.row].ImageLink{
            cell.linkIcon_img.sd_setImage(with: URL(string: "http://192.168.1.65:8012/Content/images/\(iconImgUrl)"), placeholderImage: UIImage(named: "15_settings"))
        }else{
            print("I can't fetch image")
        }
        cell.linkIcon_img.image = UIImage(named: "15_settings")
      //  cell.linkName_lbl.text = cellLabel[indexPath.row]
        cell.linkName_lbl.text = links[indexPath.row].LinkName
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            if let cell = collectionView.cellForItem(at: indexPath) as? LinksCollViewCell {
                cell.transform = .init(scaleX: 0.95, y: 0.95)
                cell.contentView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
            }
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            if let cell = collectionView.cellForItem(at: indexPath) as? LinksCollViewCell {
                cell.transform = .identity
                cell.contentView.backgroundColor = .clear
            }
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = ( collectionView.frame.width / 3) - 8
        let itemHeight = CGFloat(100)
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
