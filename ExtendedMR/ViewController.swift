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
    // Picker
    
    @IBOutlet weak var statePickerBTN: UIButton!
    
    @IBOutlet weak var stateSelection: UIPickerView!

    // Success image
    
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var buyNowBTN: UIButton!
    // Actions

    @IBAction func buyNowBTNPressed(_ sender: AnyObject) {
        
        // Show successImage
        
        successImg.isHidden = false
        stateSelection.isHidden = true
        
        // Hid the rest
        
        for i in 1...14 {
            
            view.viewWithTag(i)?.isHidden = true
        }
        
        statePickerBTN.isHidden = true
        buyNowBTN.isHidden = true
    }
    
    @IBAction func pickStatePressed(_ sender: AnyObject) {
        
        
        stateSelection.isHidden = false
        
        for i in 11...14 {
            
            view.viewWithTag(i)?.isHidden = true
        }
        
        
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
        
        // Hid Again Picker
        stateSelection.isHidden = true
        
        // Show Country and Zip Code
        
        for i in 11...14 {
            
            view.viewWithTag(i)?.isHidden = false
        }
        
        //Change the title of the button to the corresponding picker
        statePickerBTN.setTitle(states[row], for: .normal)
    }
}
