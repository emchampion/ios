//
//  ViewController.swift
//  pickerData
//
//  Created by Eric Champion on 7/14/15.
//  Copyright (c) 2015 Eric Champion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //test for possible ui options for app
    let flyMaterial = ["Hook", "Feather", "Bead", "Yarn", "Hackle", "Rubber Feet", "Googly Eyes"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    //sets number of rows to the length of flyMaterial
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return flyMaterial.count
    }
    //adds content to picker
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return flyMaterial[row]
    }
    
    //playing with picerView colors are just for fun right now
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor: UIColor
        
        switch row{
        case 0,3,5:
            newBackgroundColor = UIColor.blueColor()
        case 1,2,4:
            newBackgroundColor = UIColor.grayColor()
        default:
            newBackgroundColor = UIColor.orangeColor()
        }
        
        self.view.backgroundColor = newBackgroundColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

