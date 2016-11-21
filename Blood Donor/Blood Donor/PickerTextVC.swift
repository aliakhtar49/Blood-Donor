//
//  CustomPickerView.swift
//  Blood Donor
//
//  Created by Muzzammil on 22/11/2016.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//

import UIKit

import UIKit

class PickerTextVC: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    
    var txtField: UITextField = UITextField()
    var list = [String]()
    var pickerView : UIPickerView = UIPickerView()
    
    func initialize(textField : UITextField , picker : UIPickerView , arrayList : NSArray){
        txtField = textField
        list = arrayList as! [String]
        pickerView = picker
        txtField.inputView = pickerView
        textField.text = list[0]
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        txtField.text = list[row]
    }
}
