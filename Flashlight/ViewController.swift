//
//  ViewController.swift
//  Flashlight
//
//  Created by Sergey Lukaschuk on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

//    @IBAction func buttonPressed() {
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        view.backgroundColor = isLightOn ? .white : .black
    }
    
}

