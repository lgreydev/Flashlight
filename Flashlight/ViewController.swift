//
//  ViewController.swift
//  Flashlight
//
//  Created by Sergey Lukaschuk on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    var colorNumber = 0
    
    override var prefersStatusBarHidden: Bool {
        true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        colorNumber += 1
        
        switch colorNumber {
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .red
            colorNumber = 0
        default:
           break
        }
    }
}

