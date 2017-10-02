//
//  DisplayScreen.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-28.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit


class DisplayScreen: UIView {
    
    var currentDisplay: String!
    
    init(screenWidth: CGFloat, screenHeight: CGFloat) {
        let displayscreenFrame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight*(2/7))
        super.init(frame: displayscreenFrame)
        self.backgroundColor = UIColor.black
        currentDisplay = String()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
