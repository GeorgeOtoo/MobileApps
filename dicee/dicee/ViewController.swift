//
//  ViewController.swift
//  dicee
//
//  Created by George Otoo on 2/3/19.
//  Copyright © 2019 George Otoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDisplayDiceIndex1 = 0
    var randomDisplayDiceIndex2 = 0
    
    let diceFace = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var displayDice1: UIImageView!
    @IBOutlet weak var displayDice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceFace()
    }
    
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        updateDiceFace()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceFace()
        
    }
    
    
    func updateDiceFace(){
        randomDisplayDiceIndex1 = Int.random(in: 0...5)
        randomDisplayDiceIndex2 = Int.random(in: 0...5)
        
        displayDice1.image = UIImage(named: diceFace[randomDisplayDiceIndex1])
        displayDice2.image = UIImage(named: diceFace[randomDisplayDiceIndex2])
        
        
        
    }
    

}

