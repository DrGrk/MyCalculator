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
    
    init(buttonIs: Int, buttonWidth: CGFloat, buttonHeight: CGFloat) {
        
        super.init(frame: CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight))
        self.buttonIs = buttonIs
        self.backgroundColor = UIColor.orange
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
            
            buttonTitle = String("Clear")
            
            break
            
        case 16:
            
            buttonTitle = String(".")
            
            break
            
        case 17:
            
            buttonTitle = String("^")
            
            break
            
        case 18:
            
            buttonTitle = String("(")
            
            break
            
        case 19:
            
            buttonTitle = String(")")
            
            break
            
        case 20:
            
            buttonTitle = String("%")
            
            break
            
        default:
            
            break
        }
        
//USE THIS SWITCH STATEMENT TO ASSIGN X COORDINATE
        switch buttonIs {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
        
//USE THIS SWITCH STATEMENT TO ASSIGN Y COORDINATE
        
    }
    
}
