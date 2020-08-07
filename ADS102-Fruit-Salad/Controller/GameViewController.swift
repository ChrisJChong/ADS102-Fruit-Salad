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
   
    var game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear - start new round")
        
        newGame()
    }
    
    @IBAction func fruitButtonTapped(_ sender: UIButton) {
        print("Fruit button tag: \(sender.tag) Selected fruit name:\(game.fruitSaladImages[sender.tag])")
        
        if(game.fruitSaladImages[sender.tag] == fruitName.text) {
            
            print("Fruit Match")
            
            game.awardPoints()
            
            print("Score: \(game.points)")
            
            //Update the score label
            scoreLabel.text = "\(game.points)"
            
            //Check if the fruitSaladNames collection is empty
            if(game.fruitSaladNamesIsEmpty)() {
                
                //If empty trigger the segue into the ScoreViewController
                self.performSegue(withIdentifier: "goToScore", sender: self)
                
            } else {
               
                fruitName.text = game.getFruitWord()
            }

        } else {
            
            //Don't award any points
            print("No match")
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
            fruitImage.setImage(UIImage(named: game.fruitSaladImages[fruitImage.tag]), for: .normal)
        }

        //Get the fruit name and remove the name from the array
        fruitName.text = game.getFruitWord()
    }

}
