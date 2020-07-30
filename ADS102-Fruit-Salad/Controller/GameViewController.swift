//
//  GameViewController.swift
//  ADS102-Fruit-Salad
//
//  Created by wade chen on 30/7/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var fruitName: UILabel!
    
    
    
    //Words are shuffled
    //User is presented with all of the words and none of them are repeated
    //When the user selects the correct image, points are awarded
    //When user selects an incorrect image, 0 points awarded
    //Game ends when all of the words are displayed
    //When the game is over, user is notified that it's over and their score is displayed
    //When the game is over, the user is promtped to play again
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        
    }

    
    
    
    //Creates a new game
    func newGame() {
        
    }
    
}
