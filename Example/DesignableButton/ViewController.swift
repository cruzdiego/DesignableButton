//
//  ViewController.swift
//  DesignableButton
//
//  Created by Diego Cruz on 12/19/2015.
//  Copyright (c) 2015 Diego Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Action methods
    
    @IBAction func simpleButtonPressed(sender: AnyObject) {
        performSegueWithIdentifier("pushSegue", sender: self)
    }
    
    @IBAction func highlightingOneElementPressed(sender: AnyObject) {
        func alert()->UIAlertController{
            let newAlert = UIAlertController(title: "Alert", message: "Button pressed", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            newAlert.addAction(okAction)
            return newAlert
        }
        
        //
        presentViewController(alert(), animated: true, completion: nil)
    }
    
    @IBAction func highlightingMultipleElementsPressed(sender: UIView) {
        UIView.animateKeyframesWithDuration(0.4, delay: 0.1, options: .CalculationModeLinear, animations: { () -> Void in
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.5, animations: { () -> Void in
                sender.transform = CGAffineTransformMakeTranslation(0, 240)
            })
            UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.5, animations: { () -> Void in
                sender.transform = CGAffineTransformMakeTranslation(0, 0)
            })
            
            }, completion: nil)
    }
    
}

