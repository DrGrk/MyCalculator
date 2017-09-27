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
    
    init(buttonWidth: CGFloat, buttonHeight: CGFloat) {
        
        super.init(frame: CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented. You did not call the correct init, check th Regular Button file for the correct init.")
    }
    
}
