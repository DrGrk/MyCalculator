//
//  KeyPad.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-27.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation

class KeyPad: NSObject {
    
    var standardKeyPad: Array<RegularButton>!
    
    override init() {
        super.init()
        standardKeyPad = Array.init()
        createStandardKeyPad()
    }
    
    func createStandardKeyPad() {
        let i = 0
//        let standardKeyPadMutableArray = NSMutableArray()
        
        while i<20 {
            //Fill Standard Key Pad Mutable Array with the regular buttons
        }
    }
    
    
    
}
