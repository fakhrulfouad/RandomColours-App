//
//  ColoursDetailVC.swift
//  RandomColours
//
//  Created by Muhammad Fakhrulghazi bin Mohd Fouad on 30/11/2020.
//

import UIKit

class ColoursDetailVC: UIViewController {

    var colour: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = colour ?? .blue
        
    }

}
