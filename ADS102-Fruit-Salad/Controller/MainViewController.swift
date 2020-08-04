//
//  MainViewControler.swift
//  ADS102-Fruit-Salad
//
//  Created by wade chen on 22/7/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var gameInstructions: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        gameInstructions.text = """
        - - - - Game Instructions - - - -
        Tap the fruit to match it with its name
        """
    }
    
    @IBAction func startGamePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToGame", sender: self)
    }

}

