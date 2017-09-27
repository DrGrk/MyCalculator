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
        
        let regButtonWidth = self.view.frame.width/4
        let regButtonHeight = self.view.frame.height/7
        
        
//INIT all buttons and display screen
        let DisplayScreen: UIView! = UIView.init()
        
        let A1ClearSign: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let A2SwapSign: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let A3PercentSign: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let A4DivideSign: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        
        let B1Seven: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let B2Eight: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let B3Nine: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let B4Multiply: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        
        let C1Four: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let C2Five: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let C3Six: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let C4Subtract: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        
        let D1One: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let D2Two: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let D3Three: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let D4Plus: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        
        let E1E2Zero: UIButton! = UIButton.init()
        let E3Decimal: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)
        let E4Equal: RegularButton! = RegularButton.init(buttonWidth: regButtonWidth, buttonHeight: regButtonHeight)

        
        
        
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
        
        B1Seven.backgroundColor = UIColor.blue
        B2Eight.backgroundColor = UIColor.blue
        B3Nine.backgroundColor = UIColor.blue
        B4Multiply.backgroundColor = UIColor.blue
        
        C1Four.backgroundColor = UIColor.blue
        C2Five.backgroundColor = UIColor.blue
        C3Six.backgroundColor = UIColor.blue
        C4Subtract.backgroundColor = UIColor.blue
        
        D1One.backgroundColor = UIColor.blue
        D2Two.backgroundColor = UIColor.blue
        D3Three.backgroundColor = UIColor.blue
        D4Plus.backgroundColor = UIColor.blue
        
        E1E2Zero.backgroundColor = UIColor.blue
        E3Decimal.backgroundColor = UIColor.blue
        E4Equal.backgroundColor = UIColor.blue
        
    
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

