//
//  JBMainView.swift
//  LonelyOff
//
//  Created by EV Technologies Inc. on 2015-10-30.
//  Copyright © 2015 Jabue. All rights reserved.
//

import Foundation
import UIKit

class JBMainView: UIViewController {
    
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var logoLbl: UILabel!
    @IBOutlet weak var rightLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // first move
        changeBackground()
        // second move
        fadeinLogo()
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
}