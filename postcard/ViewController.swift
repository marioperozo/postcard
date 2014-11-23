//
//  ViewController.swift
//  postcard
//
//  Created by Mario E Perozo on 10/25/14.
//  Copyright (c) 2014 Mario E Perozo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var messageLabel : UILabel
    @IBOutlet var enterNameTextField : UITextField
    @IBOutlet var enterMessageTextField : UITextField
    @IBOutlet var sendMailButton : UIButton
    
    @IBOutlet var nameLabel : UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // This is a test comment
    }

    @IBAction func sendMailButtonPressed(sender : UIButton) {
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

