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
    var bedmasTapped: Array<Any>!
    
    
    
    
    
    
    init() {
        self.displayScreenInfo = Array()
        self.historyOfCalc = Array()
        self.buttonsTapped = Array()
        
    }
    
    func buttonTapped(btnTitle: String) {
        
        if Int(btnTitle) != nil {
            self.numberButtonTapped(btnTitle: btnTitle)
            //CODE WILL CONTINUE TO RUN THROUGH FUNCTION. THIS MAY NOT BE DESIRED
        }
        
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
    
    func numberButtonTapped(btnTitle: String) {
        //IF A NUMBER BUTTON IS TAPPED
        //ADD IT TO THE DISPLAY SCREEN INFO
        let nmbr = Int(btnTitle)
        self.buttonsTapped.append(nmbr!)
        
        //ADD IT TO THE EQUATION INFO
        self.numbersTapped.append(nmbr!)
        
        //UPDATE THE DISPLAY SCREEN VIEW
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
        //CONVERT IT INTO AN OPERATOR
        //ADD IT TO THE OPERATOR ARRAY
        //DETERMINE WHICH TWO CHARACTERS IT IS BETWEEN
        //UPDATE THE DISPLAY SCREEN
    }
    

    
    func addToHistory() {
        //ADD self.displayScreenInfo TO HISTORY
    }
}
