//
//  ViewController.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-26.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculator: Calculator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculator = Calculator.init(screenWidth: self.view.frame.width, screenHeight: self.view.frame.height)
        self.view.addSubview(calculator)
        NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //REVIEW NOTIFICATIONCENTER DESIGN PATTERNS
    func rotated() {
        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
            print("Landscape")
        }
        
        if UIDeviceOrientationIsPortrait(UIDevice.current.orientation) {
            print("Portrait")
        }
        
    }

    
    
    
}

