//
//  ViewController.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-26.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


//protocol KeyBoardHandler: class {
//    func buttonTapped(buttonTitle: String)
//}

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    var calculator: Calculator!
    var calcModel: CalculatorModel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calculator = Calculator.init(vcView: self.view)
        self.calcModel = CalculatorModel.init()
        self.addSubviews()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    func setTapGestureRecognizer() {
        //CONSIDER ADDING FILTERS to DETERMINE TYPE OF BUTTON
    }
    
    func addSubviews(){
        self.view.addSubview(self.calculator.displayScreen)
        for button in self.calculator.keyPad.standardKeyPad {
            button.addTarget(self, action: #selector(ViewController.tap), for: .touchUpInside)
            self.view.addSubview(button)
        }
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
        
    func tap(sender: UIButton) {
        calcModel.buttonTapped(btnTitle: sender.titleLabel!.text!)
    }
    
    func updateDisplayScreen() {
        //AFTER A BUTTON HAS BEEN TAPPED
    }
}


