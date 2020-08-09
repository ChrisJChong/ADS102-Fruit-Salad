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
    @IBOutlet weak var nameOfFruit: UILabel!
    @IBOutlet var fruitButtonCollection: [UIButton]!
   
    var game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear - start new round")
        
        newGame()
    }
    
    //Determines if the word presented matches the user selected image
    @IBAction func fruitButtonTapped(_ sender: UIButton) {
        print("Fruit button tag: \(sender.tag) Selected fruit name:\(game.fruitImageNames[sender.tag])")
        
        //Check to see if the selected fruit is the same as the name of the fruit
        if(game.fruitImageNames[sender.tag] == nameOfFruit.text) {
            
            print("Fruit Match")
            
            //Add points to score
            game.awardPoints()
            
            print("Score: \(game.points)")
            
            //Update the score label
            scoreLabel.text = "\(game.points)"
            
            //Check if the fruitSaladNames collection is empty
            if(game.fruitSaladNamesIsEmpty)() {
                
                //If empty trigger the segue into the ScoreViewController
                self.performSegue(withIdentifier: "goToScore", sender: self)
                
            } else {
                
                //Get the fruit name and remove the name from the array
                nameOfFruit.text = game.getFruitWord()
            }
        }
    }
    
    //Prepare data to send across to the ScoreViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let scoreView = segue.destination as? ScoreViewController {
            //Sets the ScoreViewController variable score to the points currently accumulated
            scoreView.score = game.points
        }
    }

    //Creates a new game, every new round will contain a new shuffled collection
    func newGame() {
        
        //Reset points
        game.points = 0
        
        //Make sure there are no previous items in the collections
        game.clearFruitCollection()
        
        //Handles the fruit name and image arrays
        game.handleFruitCollections()
        
        //Set up the fruit images from the fruitSaladImage array
        for fruitImage in fruitButtonCollection {
            fruitImage.setImage(UIImage(named: game.fruitImageNames[fruitImage.tag]), for: .normal)
        }

        //Get the fruit name and remove the name from the array
        nameOfFruit.text = game.getFruitWord()
    }

}
