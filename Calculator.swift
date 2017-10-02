//
//  Calculator.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-28.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


class Calculator: UIView {
    
    
//CONSIDER MAKING THIS A SINGLETON
    
    
    var keyPad: KeyPad!
    var displayScreen: UIView!
    
    
    
    init(screenWidth: CGFloat, screenHeight: CGFloat) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        keyPad = KeyPad.init(screenWidth: screenWidth, screenHeight: screenHeight)
        displayScreen = DisplayScreen.init(screenWidth: screenWidth, screenHeight: screenHeight)
        keyPad.createStandardKeyPad(screenWidth: screenWidth, screenHeight: screenHeight)
        
        self.addSubview(displayScreen)
        for RegularButton in keyPad.standardKeyPad {
            self.addSubview(RegularButton)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
        
