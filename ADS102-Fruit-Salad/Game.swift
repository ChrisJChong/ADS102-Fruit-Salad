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
    var fruitSaladNames: [String] = []
    var fruitSaladImages: [String] = []
    var points = 0
    
    mutating func awardPoints() {
        points += 1
    }
    
    mutating func getFruitWord() -> String {
        return fruitSaladNames.removeLast()
    }
    
    mutating func clearFruitCollection() {
        fruitSaladNames.removeAll()
        fruitSaladImages.removeAll()
    }
    
    mutating func handleFruitCollections() {
        
        //Shuffle the fruit collection
        fruitCollection.shuffle()
        
        //Adds up to 6 different types of fruit into a new collection
        for index in 0...5 {
            fruitSaladNames.append(fruitCollection[index])
        }

        //Assign the stored fruit salad names into the fruit salad image collections
        fruitSaladImages = fruitSaladNames
        
        //Shuffle the fruit salad names
        fruitSaladNames.shuffle()
    }
    
    func fruitSaladNamesIsEmpty() -> Bool {
        return fruitSaladNames.isEmpty
    }
}
