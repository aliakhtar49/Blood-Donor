//
//  HomeView.swift
//  Blood Donor
//
//  Created by Muzzammil on 04/09/2016.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIViewController{
    @IBOutlet weak var homeMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false

    
        if self.revealViewController() != nil {
            homeMenu.target = self.revealViewController()
            homeMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
//    let reuseIdentifier = "cell"
//    var items = ["Become Donor ", "Request Donor" , "Search Donor"]
//    
//        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return self.items.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
//
//        collectionView.backgroundColor = UIColor.white
//        let myLabel = (cell.viewWithTag(100)! as! UILabel)
//        myLabel.text = self.items[(indexPath as NSIndexPath).item]
//        cell.backgroundColor = UIColor.black
//        cell.backgroundColor = UIColor.black
//
//        return cell
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        var viewControllerObj : UIViewController
//        
//        switch((indexPath as NSIndexPath).item){
//            case 0:
//                viewControllerObj = (self.storyboard?.instantiateViewController(withIdentifier: "BecomeDonorVC") as? BecomeDonorVC)!
//            case 1:
//                viewControllerObj = (self.storyboard?.instantiateViewController(withIdentifier: "RequestDonorVC") as? RequestDonorVC)!
//            case 2:
//             viewControllerObj = (self.storyboard?.instantiateViewController(withIdentifier: "SearchDonorVC") as? SearchDonorVC)!
//            default:
//                return
//        }
//       
//        self.navigationController?.pushViewController(viewControllerObj, animated: true)
//
//        // handle tap events
//        print("You selected cell #\((indexPath as NSIndexPath).item)!")
//    }
//    
//    func collectionView(_ collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        sizeForItemAt indexPath: IndexPath) -> CGSize {
//            return CGSize(width: 100, height: 70)
//    }
    
}   
