//
//  ViewController.swift
//  Flashlight
//
//  Created by Sergey Lukaschuk on 24.03.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    /// Number of color  for switch
    var colorNumber = 0
    
    /// The button turn on/off camera flashlight
    var buttonFlashlight = UIButton()
    
    /// Image for button flashlight
    var imageFlashlight = UIImage(systemName: "flashlight.off.fill")?.withTintColor(.gray, renderingMode: .alwaysOriginal)
    
    /// Specifies whether the view controller prefers the status bar to be hidden or shown
    override var prefersStatusBarHidden: Bool {
        true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Setting button location
        buttonFlashlight = UIButton(type: .roundedRect)
        buttonFlashlight.frame = CGRect(x: 0, y: 0, width: 75, height: 150)
        buttonFlashlight.setBackgroundImage(imageFlashlight, for: .normal)
        buttonFlashlight.addTarget(self, action: #selector(toggleFlash), for: .touchDown)
        buttonFlashlight.center = view.center
        
        // Start color screen
        view.backgroundColor = .black
        
        self.view.addSubview(buttonFlashlight)
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
            view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            colorNumber = 0
        default:
           break
        }
    }
    
    /// Turn on/off the camera flashlight
    @objc func toggleFlash() {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else { return }
        guard device.hasTorch else { return }

        do {
            try device.lockForConfiguration()

            if (device.torchMode == AVCaptureDevice.TorchMode.on) {
                device.torchMode = AVCaptureDevice.TorchMode.off
            } else {
                do {
                    try device.setTorchModeOn(level: 1.0)
                } catch {
                    print(error)
                }
            }

            device.unlockForConfiguration()
        } catch {
            print(error)
        }
    }
}

