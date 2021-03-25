//
//  ViewController.swift
//  Flashlight
//
//  Created by Sergey Lukaschuk on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    /// Number of color  for switch
    var colorNumber = 0
    
    /// Specifies whether the view controller prefers the status bar to be hidden or shown
    override var prefersStatusBarHidden: Bool {
        true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start color screen
        view.backgroundColor = .white
    }

    
    // When pressed, the screen color switches
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

