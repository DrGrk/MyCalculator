//
//  Calculator.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-28.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


class Calculator: NSObject {
    
    var keyPad: KeyPad!
    
    
    init(screenWidth: CGFloat, screenHeight: CGFloat) {
        
        keyPad = KeyPad.init(screenWidth: screenHeight, screenHeight: screenHeight)
        
        DisplayScreen.createDisplayScreen(screenWidth: screenWidth, screenHeight: screenHeight)
        
        keyPad.createStandardKeyPad(screenWidth: screenWidth, screenHeight: screenHeight)
        
    }
}
        
