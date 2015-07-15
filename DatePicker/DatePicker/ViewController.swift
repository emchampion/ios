//
//  ViewController.swift
//  DatePicker
//
//  Created by Eric Champion on 7/14/15.
//  Copyright (c) 2015 Eric Champion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func displayDay(sender: AnyObject) {
        //grab date selected in date picker
        var chosenDate = self.datePicker.date
        
        //create an NSDateFormatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        //grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That day was: \(day)"
        
        //This should be an alert according to the ios Human Interface Guidlines, I wanted a action sheet
        //to play around with and see how it looked
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        //add okay
        myAlert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the sheet
        self.presentViewController(myAlert, animated: true, completion: nil)
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

