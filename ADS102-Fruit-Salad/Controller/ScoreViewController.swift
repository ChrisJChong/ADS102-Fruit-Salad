//
//  ScoreViewController.swift
//  ADS102-Fruit-Salad
//
//  Created by wade chen on 30/7/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = "\(score)"
    }

    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
        if let action = sender.titleLabel?.text {
            print(action)
            if action == "YES" {

                //Dismiss the current view and load the previous view
                navigationController?.popViewController(animated: true)

            } else {
                self.navigationController?.popToRootViewController(animated: true)
            }

        }
    }
    
}
