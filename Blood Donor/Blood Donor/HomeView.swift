//
//  HomeView.swift
//  Blood Donor
//
//  Created by Muzzammil on 04/09/2016.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  , UICollectionViewDelegateFlowLayout{
    @IBOutlet weak var homeMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false

    
        if self.revealViewController() != nil {
            homeMenu.target = self.revealViewController()
            homeMenu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    let reuseIdentifier = "cell"
    var items = ["Become Donor ", "Request Donor" , "Search Donor"]
    
        func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)

        collectionView.backgroundColor = UIColor.whiteColor()
        let myLabel = (cell.viewWithTag(100)! as! UILabel)
        myLabel.text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.blackColor()
        cell.backgroundColor = UIColor.blackColor()

        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        var viewControllerObj : UIViewController
        
        switch(indexPath.item){
            case 0:
                viewControllerObj = (self.storyboard?.instantiateViewControllerWithIdentifier("BecomeDonorVC") as? BecomeDonorVC)!
            case 1:
                viewControllerObj = (self.storyboard?.instantiateViewControllerWithIdentifier("RequestDonorVC") as? RequestDonorVC)!
            case 2:
             viewControllerObj = (self.storyboard?.instantiateViewControllerWithIdentifier("SearchDonorVC") as? SearchDonorVC)!
            default:
                return
        }
       
        self.navigationController?.pushViewController(viewControllerObj, animated: true)

        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            return CGSize(width: 100, height: 70)
    }
    
}   