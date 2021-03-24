//
//  ViewController.swift
//  Flashlight
//
//  Created by Sergey Lukaschuk on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    @IBAction func buttonPressed() {
        isLightOn.toggle()
        view.backgroundColor = isLightOn ? .white : .black
    }
    
}

