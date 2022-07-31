//
//  ViewController.swift
//  HW2_Morozenko
//
//  Created by Danil Morozenko on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var blackedRedLight: UIView!
    @IBOutlet var blackedYellowLight: UIView!
    @IBOutlet var blackedGreenLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        blackedRedLight.layer.cornerRadius = 65
        blackedGreenLight.layer.cornerRadius = 65
        blackedYellowLight.layer.cornerRadius = 65
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func StartButtonPressed() {
        
        if !blackedRedLight.isHidden && !blackedYellowLight.isHidden {
            blackedRedLight.isHidden.toggle()
            startButton.setTitle("Next", for: .normal)
            blackedGreenLight.isHidden = false
            
        }
        else if !blackedYellowLight.isHidden {
            blackedYellowLight.isHidden.toggle()
            blackedRedLight.isHidden.toggle()
            startButton.setTitle("Next", for: .normal)
            
        }
        else {
            blackedGreenLight.isHidden.toggle()
            blackedYellowLight.isHidden.toggle()
            startButton.setTitle("Go again", for: .normal)
        }
        
    }
    
}

