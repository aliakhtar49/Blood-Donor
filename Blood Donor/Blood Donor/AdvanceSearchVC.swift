//
//  AdvanceSearchVC.swift
//  Blood Donor
//
//  Created by Muzzammil on 13/10/2016.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//

import UIKit

class AdvanceSearchVC: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        populateBloodGroup()
        let tap = UITapGestureRecognizer(target: self, action: #selector(AdvanceSearchVC.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func dismissKeyboard(){
        bloodGroupText.resignFirstResponder()
    }
    
    let pickerTextVC = PickerTextVC()
    
    var bloodGroupList = ["ALL","A+", "O+", "B+" , "AB+", "A-", "O-", "B-", "AB-"]
    
    var bloodGroupPicker : UIPickerView = UIPickerView()

    @IBOutlet var bloodGroupText: UITextField!
    
    func populateBloodGroup(){
        pickerTextVC.initialize(textField: bloodGroupText, picker: bloodGroupPicker, arrayList: bloodGroupList as NSArray)
    }

}
