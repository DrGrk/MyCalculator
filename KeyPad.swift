//
//  KeyPad.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-27.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


class KeyPad {
    
    var standardKeyPad: Array<RegularButton>!
    
    init(vcView: UIView) {
        createStandardKeyPad(vcView: vcView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func createStandardKeyPad(vcView: UIView) {
        var i = 0
        let standardKeyPadMutableArray = NSMutableArray()
        
        while i<19 {
            let button = RegularButton.init(vcView: vcView, buttonIs: i)
            standardKeyPadMutableArray.add(button)
            i += 1
        }
        standardKeyPad = Array.init(standardKeyPadMutableArray) as! Array<RegularButton>
    }
    
    
}
