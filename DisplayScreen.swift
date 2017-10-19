//
//  DisplayScreen.swift
//  MyCalculator
//
//  Created by David Guichon on 2017-09-28.
//  Copyright © 2017 David Guichon. All rights reserved.
//

import Foundation
import UIKit

//CONSIDER TURNING THIS INTO A TABLE VIEW/TABLE VIEW CELL. WHEN THE USER SWIPES DOWN IT BECOMES A SCROLLABLE HISTORY
class DisplayScreen: UIView {
    
    var currentDisplay: UILabel!
    
    init(vcView: UIView) {
        super.init(frame: CGRect(x: 0, y: 0, width: vcView.frame.width, height: vcView.frame.height*(2/7)))
        self.currentDisplay = UILabel(frame: self.frame)
        self.currentDisplay.text = String()
        self.currentDisplay.textColor = UIColor.white
        self.addSubview(currentDisplay)
        self.backgroundColor = UIColor.black
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateDisplayScreen() {
        
    }

}
