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
    
    var newGameFlag = false
    
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
        print("viewDidLoad")
        
        //Start a new game
        //newGame()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear - start new round")
        
        //Check whether the user wants to play again, reset the round
        //if newGameFlag {
            newGame()
        //    print("new game")
        //    newGameFlag = false
        //}
    }


    @IBAction func fruitButtonTapped(_ sender: UIButton) {
        print("Fruit button tag: \(sender.tag) Selected fruit name:\(fruitSaladImages[sender.tag])")
        
        if(fruitSaladImages[sender.tag] == fruitName.text) {
            
            print("Fruit Match")
            //Award points
            
            //Disable the button that was just pressed
            //sender.isEnabled = false
            
            //
            
            //Check if the frutiSaladImage collection is empty
            if(fruitSaladNames.isEmpty) {
                
                //If empty trigger the segue into the ScoreViewController
                self.performSegue(withIdentifier: "goToScore", sender: self)
                
            } else {
               
                fruitName.text = fruitSaladNames.removeLast()
                print("Items remaining - \(fruitSaladNames.count)")
            }
            
            
            
        } else {
            
            //Don't award any points
            print("No match")
            
        }
         
    }
    
    //Creates a new game, every new round will contain a new shuffled collection
    func newGame() {
        
        //Make sure there are no previous items in the collections
        fruitSaladNames.removeAll()
        fruitSaladImages.removeAll()
        
        //Shuffle the fruit collection
        fruitCollection.shuffle()
        
        //Adds up to 6 different types of fruit into a new collection
        for index in 0...5 {
            fruitSaladNames.append(fruitCollection[index])
        }
        print(fruitSaladNames)
        
        //Assign the stored fruit salad names into the fruit salad image collections
        fruitSaladImages = fruitSaladNames
        
        //Set the images
        for fruitImage in fruitButtonCollection {
            fruitImage.setImage(UIImage(named: fruitSaladImages[fruitImage.tag]), for: .normal)
            //print("fruitImage number: \(fruitImage.tag) fruitImage name: \(fruitSaladImages[fruitImage.tag])")
        }
        
        //Shuffle the fruit salad names
        fruitSaladNames.shuffle()
        
        //
        fruitName.text = fruitSaladNames.removeLast()
    }
    
    
    
    
}
