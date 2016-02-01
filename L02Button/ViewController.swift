//
//  ViewController.swift
//  L02Button
//
//  Created by Kathryn Riley on 1/29/16.
//  Copyright © 2016 ___KathrynHoskins___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    var leftButtonCount = 0
    var rightButtonCount = 0
    
    
    @IBAction func doLeftButton(sender: AnyObject) {
        leftButtonCount++
        let text = "Left Button Pressed " + String(leftButtonCount) + " times"
        
        let attributedText = NSMutableAttributedString(string: text)
        
        let attributes = [NSFontAttributeName: UIFont.boldSystemFontOfSize(myLabel.font.pointSize)]
        
        let newRange = (text as NSString).rangeOfString(text)
        attributedText.setAttributes(attributes, range: newRange)
        
        myLabel.attributedText = attributedText
        
    }
    @IBAction func doRightButton(sender: AnyObject) {
        rightButtonCount++
        myLabel.text = "Right Button Pressed " + String(rightButtonCount) + " times"
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

