//
//  CalculatorModel.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-10-18.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation

class CalculatorModel {
    
    var displayScreenInfo: Array<String>!
    var historyOfCalc: Array<Array<String>>!
    
    
    
    init() {
        //ADD INFORMATION FOR INIT
        self.displayScreenInfo = Array()
        self.historyOfCalc = Array()
        
    }
    
    func buttonTapped(btnTitle: String) {
        if Int(btnTitle) != nil {
//            self.numberButtonIsTapped(btnTitle: btnTitle)
            print("Number")
        }
            //APPROPRIATE ACTION BASED ON THE BUTTON
        else {
            print("Not a number")
        }
    }
    
    func numberButtonIsTapped(btnTitle: String) {
        //IF A NUMBER BUTTON IS TAPPED
    }
    
    func operatorButtonTapped () {
        //IF AN OPERATOR BUTTON IS TAPPED
    }
    
    func equalButtonTapped() {
        //EQUAL BUTTON IS TAPPED
    }
    
    func addToHistory() {
        //ADD self.displayScreenInfo TO HISTORY
    }
}
