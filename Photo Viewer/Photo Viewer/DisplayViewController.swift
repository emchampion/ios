//
//  DisplayViewController.swift
//  Photo Viewer
//
//  Created by Eric Champion on 7/15/15.
//  Copyright (c) 2015 Eric Champion. All rights reserved.
//  Test

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto : Photo?

    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        
        self.title = currentPhoto!.name
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var thirdScene = segue.destinationViewController as! InfoViewController
        thirdScene.currentPhoto = currentPhoto
    }

}
