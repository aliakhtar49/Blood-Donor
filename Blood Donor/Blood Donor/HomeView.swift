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
 
        if self.revealViewController() != nil {
            homeMenu.target = self.revealViewController()
            homeMenu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}   