//
//  AdvanceSearchVC.swift
//  Blood Donor
//
//  Created by Muzzammil on 13/10/2016.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//

import UIKit

class AdvanceSearchVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

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
    
    var bloodGroupList = ["A+", "O+", "B+" , "AB+", "A-", "O-", "B-", "AB-"]
    
    var bloodGroupPicker : UIPickerView = UIPickerView()

    @IBOutlet var bloodGroupText: UITextField!
    
    func populateBloodGroup(){
        bloodGroupText.inputView = bloodGroupPicker
        bloodGroupPicker.dataSource = self
        bloodGroupPicker.delegate = self
        bloodGroupPicker.selectRow(4, inComponent: 0, animated: true)
        bloodGroupText.text = bloodGroupList[4]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Column count: use one column.
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
                return bloodGroupList.count
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
                return bloodGroupList[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        bloodGroupText.text = bloodGroupList[row]
    }
}
