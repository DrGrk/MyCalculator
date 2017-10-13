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
    
    init(vcView: UIView) {
        super.init(frame: CGRect(x: 0, y: 0, width: vcView.frame.width, height: vcView.frame.height*(2/7)))
        self.backgroundColor = UIColor.black
        currentDisplay = String()
    }
    
    func addNumber(numberTapped: Int) {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
