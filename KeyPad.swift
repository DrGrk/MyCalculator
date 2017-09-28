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
        standardKeyPad = Array.init()
        createStandardKeyPad (screenWidth: screenWidth, screenHeight: screenHeight)
    }
    
    
    
    
    func createStandardKeyPad(screenWidth: CGFloat, screenHeight: CGFloat) {
        let i = 0
//        let standardKeyPadMutableArray = NSMutableArray()
        
        while i<20 {
            
        }
    }
    
    
}
