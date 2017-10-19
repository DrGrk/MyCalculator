//
//  Calculator.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-28.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


class Calculator {
    
    
//CONSIDER MAKING THIS A SINGLETON
//CONSIDER CREATING PROTOCOLS TO CHANGE THE FUNCTION OF THE CALCULATOR
    
    
    var keyPad: KeyPad!
    var displayScreen: UIView!
    
    
    
    init(vcView: UIView) {
        keyPad = KeyPad.init(vcView: vcView)
        displayScreen = DisplayScreen.init(vcView: vcView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
        
