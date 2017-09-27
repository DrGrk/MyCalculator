//
//  ViewController.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-26.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var DisplayScreen: UIView!
    
    @IBOutlet var A1ClearSign: UIButton!
    @IBOutlet var A2SwapSign: UIButton!
    @IBOutlet var A3PercentSign: UIButton!
    @IBOutlet var A4DivideSign: UIButton!
    
    @IBOutlet var B1Seven: UIButton!
    @IBOutlet var B2Eight: UIButton!
    @IBOutlet var B3Nine: UIButton!
    @IBOutlet var B4Multiply: UIButton!
    
    @IBOutlet var C1Four: UIButton!
    @IBOutlet var C2Five: UIButton!
    @IBOutlet var C3Six: UIButton!
    @IBOutlet var C4Subtract: UIButton!
    
    @IBOutlet var D1One: UIButton!
    @IBOutlet var D2Two: UIButton!
    @IBOutlet var D3Three: UIButton!
    @IBOutlet var D4Plus: UIButton!

    @IBOutlet var E1E2Zero: UIButton!
    @IBOutlet var E3Decimal: UIButton!
    @IBOutlet var E4Equal: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let regButtonWidth = self.view.frame.width/4
        let regButtonHeight = self.view.frame.height/7
        
        
//Set the Height of DisplayScreen to 2/7, Just For Now
        DisplayScreen.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height/(2/7))

    
        
        
        A1ClearSign.frame = CGRect(x: 0, y: DisplayScreen.frame.height, width: regButtonWidth, height: regButtonHeight)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
}

