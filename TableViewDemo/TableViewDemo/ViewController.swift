//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Eric Champion on 7/15/15.
//  Copyright (c) 2015 Eric Champion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    //testing UI options for flybox app
    let flyMaterial = ["Hook", "Feather", "Bead", "Yarn", "Hackle", "Rubber Feet", "Googly Eyes"]
    
    let flies = ["Nymph", "Wooly Bugger", "Bead Head", "Ant", "Mouse", "Clouser Minnow", "Muddler"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return flyMaterial.count
        } else {
            return flies.count
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        if indexPath.section == 0 {
            let (materialTitle) = flyMaterial[indexPath.row]
            cell.textLabel?.text =  materialTitle
            //insert subtitle text
            //cell.detailTextLabel?.text =
        } else {
            let (materialTitle) = flies[indexPath.row]
            cell.textLabel?.text =  materialTitle

        }
        var myImage = UIImage(named: "CellIcon")
        cell.imageView?.image = myImage
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Fly Material"
        } else {
            return "Flies"
        }
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

