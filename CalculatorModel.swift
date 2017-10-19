//
//  CalculatorModel.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-10-18.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation

protocol CMDelegate {
    func equationSolved(solution: String)
    func updateDisplayScreenWithButton(button: String)
}

class CalculatorModel {
    
    var cMDelegate: CMDelegate
    var displayScreenInfo: String!
    var historyOfCalc: Array<String>!
    
    
    init(cMDelegate: ViewController) {
        self.displayScreenInfo = String()
        self.historyOfCalc = Array()
        self.cMDelegate = cMDelegate
    }
    
    func buttonTapped(btnTitle: String) {
        
        if Int(btnTitle) != nil {
            self.numberButtonTapped(btnTitle: btnTitle)
            self.cMDelegate.updateDisplayScreenWithButton(button: btnTitle)
            //CODE WILL CONTINUE TO RUN THROUGH FUNCTION. THIS MAY NOT BE DESIRED
        }
        else {
            switch btnTitle {
                
            case "=":
                self.equalButtonTapped()
                break
                
            case "/", "*", "+", "-", "(", ")":
                self.bedmasButtonTapped(btnTitle: btnTitle)
                self.cMDelegate.updateDisplayScreenWithButton(button: btnTitle)
                break
                
            default:
                break
            }
        }
    }
    
    func numberFormatterSetUp() {
    
    }
    
    func numberButtonTapped(btnTitle: String) {
        //ADD IT TO THE EQUATION INFO
        self.displayScreenInfo.append(btnTitle)
    }

    
    func equalButtonTapped() {
        //EQUAL BUTTON IS TAPPED. 
        //CONVERT STRINGS INTO INTEGER VALUES, 
        //CONVERT BEDMAS STRINGS INTO OPERATORS,
        //INSERT THEM INTO AN EQUATION IN THE PROPER ORDER
        //SOLVE
        //CALCULATE THE VALUE FROM THE DISPLAY SCREEN INFO
        if self.displayScreenInfo != String() {
            let answr = NSExpression(format:self.displayScreenInfo)
            var solution = String(describing: answr.expressionValue(with: nil, context: nil))
            //REMOVE THE "OPTIONAL()" PART OF THE STRING
            self.cMDelegate.equationSolved(solution: solution)
            //ADD TO HISTORY
            self.displayScreenInfo = String()
        }
    }
    
    func bedmasButtonTapped (btnTitle: String) {
        //IF A bedmas BUTTON IS TAPPED
        //ADD IT TO THE displayScreenInfo
        self.displayScreenInfo.append(btnTitle)
        
        //ADD IT TO THE EQUATION INFO //DETERMINE WHICH TWO CHARACTERS IT IS BETWEEN
//        let position = self.numbersTapped.count + self.bedmasTapped.count
//        self.bedmasTapped[position] = btnTitle
        
        
        //UPDATE THE DISPLAY SCREEN
    }
    
    func addToHistory() {
        //ADD self.displayScreenInfo TO HISTORY
    }
}
