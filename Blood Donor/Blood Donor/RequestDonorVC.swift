//
//  RequestDonorVC.swift
//  Blood Donor
//
//  Created by Muzzammil on 10/09/2016.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//

import UIKit

class RequestDonorVC: UIViewController {

    @IBOutlet var homeMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            homeMenu.target = self.revealViewController()
            homeMenu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
