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

        gameInstructions.text = """
        - - - - Game Instructions - - - -
        Tap on the fruit to match with the displayed name
        """
    }
    
    @IBAction func startGamePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToGame", sender: self)
    }

}

