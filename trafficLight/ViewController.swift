//
//  ViewController.swift
//  trafficLight
//
//  Created by Ларин Василий on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var actionButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.cornerRadius = 15
        
    }
    
    override func viewWillLayoutSubviews() {
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.width / 2
        redLight.layer.cornerRadius = redLight.bounds.width / 2
    }
    
    
    @IBAction func actionButtonTrafficLightControl() {
        actionButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
}

extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
    
