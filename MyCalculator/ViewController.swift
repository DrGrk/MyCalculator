//
//  ViewController.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-26.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//INIT all buttons and display screen
        let DisplayScreen: UIView! = UIView.init()
        
        let A1ClearSign: UIButton! = UIButton.init()
        let A2SwapSign: UIButton! = UIButton.init()
        let A3PercentSign: UIButton! = UIButton.init()
        let A4DivideSign: UIButton! = UIButton.init()
        
//        let B1Seven: UIButton!
//        let B2Eight: UIButton!
//        let B3Nine: UIButton!
//        let B4Multiply: UIButton!
//        
//        let C1Four: UIButton!
//        let C2Five: UIButton!
//        let C3Six: UIButton!
//        let C4Subtract: UIButton!
//        
//        let D1One: UIButton!
//        let D2Two: UIButton!
//        let D3Three: UIButton!
//        let D4Plus: UIButton!
//        
//        let E1E2Zero: UIButton!
//        let E3Decimal: UIButton!
//        let E4Equal: UIButton!
        
        let regButtonWidth = self.view.frame.width/4
        let regButtonHeight = self.view.frame.height/7
        
        
//ADD TO SUBVIEW all buttons and display screen
        self.view.addSubview(DisplayScreen)
        self.view.addSubview(A1ClearSign)
        self.view.addSubview(A2SwapSign)
        self.view.addSubview(A3PercentSign)
        self.view.addSubview(A4DivideSign)
        
//SET THE COLOR of all buttons and display screen
        
        DisplayScreen.backgroundColor = UIColor.black
        
        A1ClearSign.backgroundColor = UIColor.blue
        A2SwapSign.backgroundColor = UIColor.blue
        A3PercentSign.backgroundColor = UIColor.blue
        A4DivideSign.backgroundColor = UIColor.blue
        
        
    
//Set the Sizing and Position of DisplayScreen to 2/7, Just For Now
        DisplayScreen.frame = CGRect(x: 0, y: 0, width: regButtonWidth*4, height: regButtonHeight*2)

//Sizing of Buttons
        A1ClearSign.frame = CGRect(x: 0, y: DisplayScreen.frame.height, width: regButtonWidth, height: regButtonHeight)
        A2SwapSign.frame = CGRect(x: 0, y: DisplayScreen.frame.height, width: regButtonWidth, height: regButtonHeight)
        A3PercentSign.frame = CGRect(x: 0, y: DisplayScreen.frame.height, width: regButtonWidth, height: regButtonHeight)
        A4DivideSign.frame = CGRect(x: 0, y: DisplayScreen.frame.height, width: regButtonWidth, height: regButtonHeight)
        
        
//Position of Buttons from Right to Left, then down a row
        A4DivideSign.frame.origin.x = DisplayScreen.frame.width - A4DivideSign.frame.width
        A3PercentSign.frame.origin.x = A4DivideSign.frame.origin.x - A4DivideSign.frame.width
        A2SwapSign.frame.origin.x = A3PercentSign.frame.origin.x - A3PercentSign.frame.width
        A1ClearSign.frame.origin.x = A2SwapSign.frame.origin.x - A1ClearSign.frame.width
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
}

