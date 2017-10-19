//
//  ViewController.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-26.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit




class ViewController: UIViewController, UIGestureRecognizerDelegate, CMDelegate{

    var calculator: Calculator!
    var calcModel: CalculatorModel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calculator = Calculator.init(vcView: self.view)
        self.calcModel = CalculatorModel.init(cMDelegate: self)
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
    
    
    
    func equationSolved(solution: String) {
        self.updateDisplayScreenWithAnswer(solution: solution)
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
    
    func updateDisplayScreenWithButton(button: String) {
        self.calculator.displayScreen.currentDisplay.text!.append(button)
    }
    
    func updateDisplayScreenWithAnswer(solution: String) {
        self.calculator.displayScreen.currentDisplay.text = String()
        self.calculator.displayScreen.currentDisplay.text = solution
    }
}


