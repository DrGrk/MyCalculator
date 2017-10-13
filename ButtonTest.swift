//
//  ButtonTest.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-10-12.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit

class ButtonTest: UIButton {
    
    var buttonIs: Int!
    
    var keyBoardRow: CGFloat!
    var keyBoardColumn: CGFloat!
    
    
    
    
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    

}
