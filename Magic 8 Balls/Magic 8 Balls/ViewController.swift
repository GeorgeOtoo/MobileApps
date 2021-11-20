//
//  ViewController.swift
//  Magic 8 Balls
//
//  Created by George Otoo on 2/5/19.
//  Copyright © 2019 George Otoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageDisplay = ["ball1","ball2","ball3","ball4","ball5"]
    
    var imageDisplayIndex = 0

    @IBOutlet weak var displayAnswer: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pressedButton()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        pressedButton()
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        pressedButton()
    }
    
    func pressedButton(){
        
        imageDisplayIndex = Int.random(in: 0...4)
        displayAnswer.image = UIImage(named: imageDisplay[imageDisplayIndex])
    }
    
    
    
}

