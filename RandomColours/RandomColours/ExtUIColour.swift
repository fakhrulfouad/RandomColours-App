//
//  ExtUIColour.swift
//  RandomColours
//
//  Created by Muhammad Fakhrulghazi bin Mohd Fouad on 30/11/2020.
//

import UIKit

extension UIColor {
    
    //func that creates random colour
    //static bcs we want every instance of UIColour will get it not a specific instance of it
    static func random() -> UIColor {
        let randomColour = UIColor(red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 1)
        return randomColour
    }
}
