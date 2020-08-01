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
    @IBOutlet var fruitButtonCollection: [UIButton]!
    
    var fruitCollection: [String] = ["Apple","Grape","Kiwi","Lemonade","Orange","Pineapple","Strawberry","Watermelon"]
    
    var fruitSaladNames: [String] = []
    
    var fruitSaladImages: [String] = []
    
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
        
        //Shuffle the fruit collection
        fruitCollection.shuffle()
        
        for index in 0...5 {
            fruitSaladNames.append(fruitCollection[index])
        }
        print(fruitSaladNames)
        
        //Assign the stored fruit salad names into the fruit salad image collections
        fruitSaladImages = fruitSaladNames
        
        for fruitImage in fruitButtonCollection {
            fruitImage.setImage(UIImage(named: fruitSaladImages[fruitImage.tag]), for: .normal)
            print("fruitImage number: \(fruitImage.tag) fruitImage name: \(fruitSaladImages[fruitImage.tag])")
        }
        
        //Shuffle the fruit salad names
        fruitSaladImages.shuffle()
        
        
        fruitName.text = fruitSaladImages.removeLast()
        /*for fruit in fruitSaladNames {
            fruitName.text = fruit
        }*/
        
    }

    @IBAction func fruitButtonTapped(_ sender: UIButton) {
        print("Fruit button tag: \(sender.tag) Selected fruit name:\(fruitSaladNames[sender.tag])")
        
        if(fruitSaladNames[sender.tag] == fruitName.text) {
            print("Fruit Match")
        }
        
        
    }
    
    //Creates a new game, every new round will contain a new shuffled collection
    func newGame() {
        
    }
    
    
    
    
}
