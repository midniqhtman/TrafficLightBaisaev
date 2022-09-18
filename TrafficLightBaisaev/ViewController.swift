//
//  ViewController.swift
//  TrafficLightBaisaev
//
//  Created by Байсаев Зубайр on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redYellowGreen: [UIView]!
    @IBOutlet weak var startButton: UIButton!
    
    var buttonCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTrafficLights()
    }
    
    @IBAction func nextButton() {
        buttonCount += 1
        
        startButton.setTitle("NEXT", for: .normal)
        setupTrafficLights()
        
        switch buttonCount {
        case 1:
            redYellowGreen[0].alpha = 1
        case 2:
            redYellowGreen[1].alpha = 1
        case 3:
            redYellowGreen[2].alpha = 1
        case 4:
            buttonCount = 1
            redYellowGreen[0].alpha = 1
        default:
            setupTrafficLights()
        }
    }
    
        func setupTrafficLights() {
            
            for light in redYellowGreen {
                light.layer.cornerRadius = light.frame.width / 2
                light.alpha = 0.3
                light.clipsToBounds = true
            }
        }
    }

