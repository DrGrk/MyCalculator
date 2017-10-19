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
    
    var buttonsTapped: Array<Any>!
    var numbersTapped: Array<Int>!
    var bedmasTapped: Dictionary<Int, Any>
    
    
    init() {
        self.displayScreenInfo = Array()
        self.historyOfCalc = Array()
        self.buttonsTapped = Array()
        self.numbersTapped = Array()
        self.bedmasTapped = Dictionary()
    }
    
    func buttonTapped(btnTitle: String) {
        
        if Int(btnTitle) != nil {
            self.numberButtonTapped(btnTitle: btnTitle)
            //CODE WILL CONTINUE TO RUN THROUGH FUNCTION. THIS MAY NOT BE DESIRED
        }
        else {
            switch btnTitle {
                
            case "=":
                self.equalButtonTapped()
                break
                
            case "/", "*", "+", "-", "(", ")":
                self.bedmasButtonTapped(btnTitle: btnTitle)
                break
                
            default:
                break
            }
        }
        self.updateDisplayScreenView()
    }
    
    func numberButtonTapped(btnTitle: String) {
        //IF A NUMBER BUTTON IS TAPPED
        let nmbr = Int(btnTitle)
        
        //ADD IT TO THE EQUATION INFO
        self.numbersTapped.append(nmbr!)
        
    }

    
    func equalButtonTapped() {
        //EQUAL BUTTON IS TAPPED. 
        //CONVERT STRINGS INTO INTEGER VALUES, 
        //CONVERT BEDMAS STRINGS INTO OPERATORS,
        //INSERT THEM INTO AN EQUATION IN THE PROPER ORDER
        //SOLVE
        //CALCULATE THE VALUE FROM THE DISPLAY SCREEN INFO
        
        //ADD TO HISTORY
    }
    
    func bedmasButtonTapped (btnTitle: String) {
        //IF A bedmas BUTTON IS TAPPED
        //ADD IT TO THE displayScreenInfo
        
        
        //ADD IT TO THE EQUATION INFO //DETERMINE WHICH TWO CHARACTERS IT IS BETWEEN
        let position = self.numbersTapped.count + self.bedmasTapped.count
        self.bedmasTapped[position] = btnTitle
        //CONVERT IT INTO AN OPERATOR
        
        
        //UPDATE THE DISPLAY SCREEN
    }
    
    func updateDisplayScreenView() {
        //FUNCTION TO UPDATE DISPLAY SCREENVIEW
    }
    
    func addToHistory() {
        //ADD self.displayScreenInfo TO HISTORY
    }
}
