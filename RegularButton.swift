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
    
    
    init(buttonIs: Int, buttonWidth: CGFloat, buttonHeight: CGFloat) {
        
        super.init(frame: CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight))
        self.buttonIs = buttonIs
        self.backgroundColor = UIColor.orange
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented. You did not call the correct init, check th Regular Button file for the correct init.")
    }
    
    func assignButtonUse () {
        switch buttonIs {
        case 0:
            //ASSIGN FUNCTION
            //ASSIGN POSITION
            //
            break
            
        case 1:
            <#code#>
            
        case 2:
            <#code#>
            
        case 3:
            <#code#>
            
        case 4:
            <#code#>
            
        case 5:
            <#code#>
            
        case 6:
            <#code#>
            
        case 7:
            <#code#>
            
        case 8:
            <#code#>
            
        case 9:
            <#code#>
            
        case 10:
            <#code#>
            
            
        case 11:
            <#code#>
            
        case 12:
            <#code#>
            
        case 13:
            <#code#>
            
        case 14:
            <#code#>
            
        case 15:
            <#code#>
            
        case 16:
            <#code#>
            
        case 17:
            <#code#>
            
        case 18:
            <#code#>
            
        case 19:
            <#code#>
            
        case <#pattern#>:
            <#code#>
            
            
            
            
            
            
            
            
            
            
            
            
        default:
            <#code#>
        }
        
    }
    
}
