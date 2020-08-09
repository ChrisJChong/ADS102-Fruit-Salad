//
//  Game.swift
//  ADS102-Fruit-Salad
//
//  Created by wade chen on 30/7/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import Foundation

struct Game {
     
    var fruitCollection: [String] = ["Apple","Grape","Kiwi","Lemonade","Orange","Pineapple","Strawberry","Watermelon"]
    var fruitNames: [String] = []
    var fruitImageNames: [String] = []
    var points = 0
    
    mutating func awardPoints() {
        points += 1
    }
    
    mutating func getFruitWord() -> String {
        return fruitNames.removeLast()
    }
    
    mutating func clearFruitCollection() {
        fruitNames.removeAll()
        fruitImageNames.removeAll()
    }
    
    mutating func handleFruitCollections() {
        
        //Shuffle the fruit collection
        fruitCollection.shuffle()
        
        //Adds up to 6 different types of fruit into a new collection
        for index in 0...5 {
            fruitNames.append(fruitCollection[index])
        }

        //Assign the stored fruit salad names into the fruit salad image collections
        fruitImageNames = fruitNames
        
        //Shuffle the fruit salad names
        fruitNames.shuffle()
    }
    
    func fruitSaladNamesIsEmpty() -> Bool {
        return fruitNames.isEmpty
    }
}
