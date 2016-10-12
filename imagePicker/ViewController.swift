//
//  ViewController.swift
//  imagePicker
//
//  Created by Mohammad Awwad on 8/15/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func experiment() {
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    
    
    @IBAction func alertF(sender: AnyObject) {
        
        let controller = UIAlertController()
        controller.title = "Test alert"
        controller.message = "This is a test"
        
        // Dismiss the view controller after the user taps “ok”
        let okAction = UIAlertAction (title:"ok", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion:nil)
        
    }

    @IBAction func activeV(sender: AnyObject) { //share model
        
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

