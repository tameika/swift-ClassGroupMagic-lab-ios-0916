//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Tameika Lawrence on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Create the Tiger.swift file and define a class called Tiger.
//Add two properties to your Tiger class:
//A String property called name
//A Bool property called isHungry
//Create an initializer for this class. This class should take one parameter of type String called name, and assign that parameter to the appropriate property. isHungry should be true by default.
//Implement a method called eat(). This method takes no parameters. It should change isHungry to false.

class Tiger {
    
    var name: String
    var isHungry: Bool
    
    init(name: String) {
        self.name = name
        self.isHungry = true
        
        
        func eat() {
            
            self.isHungry = false
        }
    
    }
}
