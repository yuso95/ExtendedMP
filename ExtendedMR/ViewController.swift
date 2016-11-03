//
//  ViewController.swift
//  ExtendedMR
//
//  Created by Younoussa Ousmane Abdou on 11/3/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let states = ["Alaska", "Alabama", "California", "Main", "New York", "Texas"]
    
    // Outlets
    
    @IBOutlet weak var miraclePill: UIImageView!
    @IBOutlet weak var miracleLabel: UILabel!
    @IBOutlet weak var miraclePrice: UILabel!
    @IBOutlet weak var diviserView: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var pickStateBtn: UIButton!
    
    // Picker
    @IBOutlet weak var stateSelection: UIPickerView!

    // Success image
    
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var countryLabel:UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var buyNowBTN: UIButton!
    // Actions

    @IBAction func buyNowBTNPressed(_ sender: AnyObject) {
        
        miraclePill.isHidden = true
        miracleLabel.isHidden = true
        miraclePrice.isHidden = true
        diviserView.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTextField.isHidden = true
        streetLabel.isHidden = true
        streetTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        pickStateBtn.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        buyNowBTN.isHidden = true
        
        // Show successImage
        
        successImg.isHidden = false
        stateSelection.isHidden = true
    }
    
    @IBAction func pickStatePressed(_ sender: AnyObject) {
        
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        
        stateSelection.isHidden = false
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateSelection.dataSource = self
        stateSelection.delegate = self
        
        stateSelection.isHidden = true
    }
    
    // PICKER PROTOCOLS
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        pickStateBtn.setTitle(states[row], for: .normal)
        stateSelection.isHidden = true
        
        // Show Country and Zip Code
        
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipLabel.isHidden = false
        zipTextField.isHidden = false
    }
}
