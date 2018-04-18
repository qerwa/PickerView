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
      
      var color = ["WHITE","RED","GREEN"]
      var number = ["1","2","3","4"]
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            //delegate 와 ViewController 연결
            myPV.delegate = self
            myPV.dataSource = self
            myL.text = color[0]
            myL2.text = number[0]
      }
      
      //UIPickerViewDataSource method
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 2
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
                  return 3
            } else {
                  return 4
            }
      }
      
      //UIPickerViewDelegate method
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            if component == 0 {
                  return color[row]
            } else {
                  return number[row]
            }
      }
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
            if component == 0{
                  myL.text = color[row]}
            else{
                  myL2.text = number[row]}
            }

            
//           let myString = "\(row), \(component)"
//            myL.text = myString
//            return myString
      }


