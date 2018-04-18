//
//  ViewController.swift
//  PickerView
//
//  Created by D7703_17 on 2018. 4. 18..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
      
      

      @IBOutlet weak var myPV: UIPickerView!
      @IBOutlet weak var myL: UILabel!
      @IBOutlet weak var myL2: UILabel!
      @IBOutlet weak var myL3: UILabel!
      
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            //delegate 와 ViewController 연결
            myPV.delegate = self
            myPV.dataSource = self
      }
      
      //UIPickerViewDataSource method
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 3
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
                  return 20
            } else if component == 1{
                  return 100
            } else {
                  return 300
            }
      }
      
      //UIPickerViewDelegate method
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
           let myString = "\(row), \(component)"
            myL.text = myString
            return myString
      }
    
}

