//
//  KeyPad.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-27.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


class KeyPad: NSObject {
    
    var standardKeyPad: Array<RegularButton>!

    init(screenWidth: CGFloat, screenHeight: CGFloat) {
        super.init()
        createStandardKeyPad (screenWidth: screenWidth, screenHeight: screenHeight)
    }
    
    
    
    
    func createStandardKeyPad(screenWidth: CGFloat, screenHeight: CGFloat) {
        var i = 0
        let standardKeyPadMutableArray = NSMutableArray()
        
        while i<19 {
        let button = RegularButton.init(buttonIs: i, screenWidth: screenWidth, screenHeight: screenHeight)
        standardKeyPadMutableArray.add(button)
            i += 1
        }
        
        standardKeyPad = Array.init(standardKeyPadMutableArray) as! Array<RegularButton>
    }
    
    
}
