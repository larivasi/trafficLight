//
//  ViewController.swift
//  trafficLight
//
//  Created by Ларин Василий on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var greenLight: UIImageView!
    @IBOutlet weak var yellowLight: UIImageView!
    @IBOutlet weak var redLight: UIImageView!
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.cornerRadius = 15
        
        greenLight.layer.cornerRadius = greenLight.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.width / 2
        redLight.layer.cornerRadius = redLight.bounds.width / 2
    }
    
    
    @IBAction func actionButtonTrafficLightControl() {
        
        actionButton.setTitle("Next", for: .normal)
        
        if redLight.alpha == yellowLight.alpha {
            redLight.alpha = CGFloat(MAXFLOAT)
            greenLight.alpha = 0.3
            }
        else if yellowLight.alpha != CGFloat(MAXFLOAT)
                    && redLight.alpha == CGFloat(MAXFLOAT)
                    && greenLight.alpha != CGFloat(MAXFLOAT) {
            yellowLight.alpha = CGFloat(MAXFLOAT)
            redLight.alpha = 0.3
        }
        else if greenLight.alpha != CGFloat(MAXFLOAT)
                    && yellowLight.alpha == CGFloat(MAXFLOAT)
                    && redLight.alpha != CGFloat(MAXFLOAT) {
            greenLight.alpha = CGFloat(MAXFLOAT)
            yellowLight.alpha = 0.3
        }
    }
    
}
