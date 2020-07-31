//
//  GameViewController.swift
//  ADS102-Fruit-Salad
//
//  Created by wade chen on 30/7/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var fruitName: UILabel!
    
    //Words are shuffled
    //User is presented with all of the words and none of them are repeated
    //When the user selects the correct image, points are awarded
    //When user selects an incorrect image, 0 points awarded
    //Game ends when all of the words are displayed
    //When the game is over, user is notified that it's over and their score is displayed
    //When the game is over, the user is promtped to play again
    
    @IBOutlet var fruitButtonCollection: [UIButton]!
    
    var fruitCollection: [String] = ["Apple","Grape","Kiwi","Lemonade","Orange","Pineapple","Strawberry","Watermelon"]
    
    var tempFruit: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Shuffle the fruit collection
        fruitCollection.shuffle()
        
        for index in 0...5 {
            tempFruit.append(fruitCollection[index])
        }
        print(tempFruit)
        
    }

    @IBAction func fruitButtonTapped(_ sender: UIButton) {
        
    }
    
    //Creates a new game, every new round will contain a new shuffled collection
    func newGame() {
        
    }
    
    
    
    
}
