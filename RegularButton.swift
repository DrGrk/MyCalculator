//
//  RegularButton.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-27.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit

class RegularButton: UIButton {
    
    var buttonIs: Int!
    var buttonTitle: String!
    var keyBoardRow: CGFloat!
    var keyBoardColumn: CGFloat!
    
    
    
    init(buttonIs: Int, screenWidth: CGFloat, screenHeight: CGFloat) {
        let buttonWidth = screenWidth/4
        let buttonHeight = screenHeight/7
        super.init(frame: CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight))
        
        self.buttonIs = buttonIs
        self.assignButtonUse()
        self.assignXPosition()
        self.assignYPosition()
        self.backgroundColor = UIColor.orange
        
        self.frame.origin.x = screenWidth - (screenWidth/4)*self.keyBoardColumn
        self.frame.origin.y = screenHeight - (screenHeight/7)*self.keyBoardRow
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented. You did not call the correct init, check th Regular Button file for the correct init.")
    }
    
    
    
    func assignButtonUse () {
        
        if buttonIs < 10 {
            buttonTitle = String(buttonIs)
        }
        
        switch buttonIs {
        case 0:
            
            break
            
        case 1:
            
            
            
            break
            
        case 2:
            
            break
            
        case 3:
            
            break
            
        case 4:
            
            break
            
        case 5:
            
            break
            
        case 6:
            
            break
            
        case 7:
            
            break
            
        case 8:
            
            break
            
        case 9:
            
            break
            
        case 10:
            
            buttonTitle = String("+")
            
            break
            
        case 11:
            
            buttonTitle = String("-")
            
            break
            
        case 12:
            
            buttonTitle = String("*")
            
            break
            
        case 13:
            
            buttonTitle = String("/")
            
            break
            
        case 14:
            
            buttonTitle = String("=")
            
            break
            
        case 15:
            
            buttonTitle = String("%")
            
            break
            
        case 16:
            
            buttonTitle = String(".")
            
            break
            
        case 17:
            
            buttonTitle = String("%")
            //USE SPECIAL CHARACTER IN THE Future
            
            break
            
        case 18:
            
            buttonTitle = String("%")
            
            break
            
        case 19:
            
            buttonTitle = String("+/-")
            
            break
            
        case 20:
            
            buttonTitle = String("Clear")
            
            break
            
        default:
            
            break
        }
        
        
    }
    
    func assignXPosition() {
        switch buttonTitle {
            
        case "/", "*", "-", "+", "=":
            keyBoardColumn = 1
            break
            
        case "%", "9", "6", "3", ".":
            keyBoardColumn = 2
            break
            
        case "+/-", "8", "5", "2":
            keyBoardColumn = 3
            break
            
        case "Clear", "7", "4", "1", "0":
            keyBoardColumn = 4
            break

            
        default:
            break
        }
    }
    
//USE THIS SWITCH STATEMENT TO ASSIGN X COORDINATE
        
    func assignYPosition() {

        switch buttonTitle {
            
        case "0", ".", "=":
            keyBoardRow = 1
            break
            
        case "1", "2", "3", "+":
            keyBoardRow = 2
            break
            
        case "4", "5", "6", "-":
            keyBoardRow = 3
            break
            
        case "7", "8", "9", "*":
            keyBoardRow = 4
            break
            
        case "Clear", "+/-", "%", "/":
            keyBoardRow = 5
            break
            
        default:
            break
        }
        
//USE THIS SWITCH STATEMENT TO ASSIGN Y COORDINATE
        
    }
    
}
