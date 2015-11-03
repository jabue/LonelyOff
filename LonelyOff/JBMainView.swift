//
//  JBMainView.swift
//  LonelyOff
//
//  Created by EV Technologies Inc. on 2015-10-30.
//  Copyright © 2015 Jabue. All rights reserved.
//

import Foundation
import UIKit

class JBMainView: UIViewController, LTMorphingLabelDelegate {
    
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var logoLbl: UILabel!
    @IBOutlet weak var rightLbl: UILabel!
    @IBOutlet weak var rightLabelCnst: NSLayoutConstraint!
    @IBOutlet weak var wordsLbl1: LTMorphingLabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // first move
        changeBackground()
        // second move
        fadeinLogo()
        // third move
        dropDownRights()
        // show indicateLbl1 text
        showLb1Txt()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: change the Image of background
    func changeBackground() {
        backgroundImg.alpha = 0.4
        backgroundImg.image = UIImage(named: "welcome.jpeg");
        
        //code to animate bg with delay 2 and after completion it recursively calling animateImage method
        UIView.animateWithDuration(2.0, delay: 0, options:UIViewAnimationOptions.CurveEaseOut, animations: {() in
            self.backgroundImg!.alpha = 1.0
            },
            completion: nil)
    }
    
    // fade in logo
    func fadeinLogo() {
        UIView.animateWithDuration(1.0, delay: 0.5, options:UIViewAnimationOptions.CurveEaseOut, animations: {() in
            self.logoLbl.alpha = 0
            },
            completion: nil)
    }
    
    // drop down right label
    func dropDownRights() {
        UIView.animateWithDuration(1.0, delay: 0.5, options:UIViewAnimationOptions.CurveEaseOut, animations: {() in
            self.rightLabelCnst.constant = -20
            // self.view.layoutIfNeeded()
            },
            completion: nil)
    }
    
    // show indicateLb1 text
    func showLb1Txt() {
        self.wordsLbl1.morphingEffect = .Pixelate
        
        let delay = 2 * Double(NSEC_PER_SEC)
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.wordsLbl1.text = "Welcome to our LonelyOff"
        }
        // NSThread.sleepForTimeInterval(3.0)
        
    }
}