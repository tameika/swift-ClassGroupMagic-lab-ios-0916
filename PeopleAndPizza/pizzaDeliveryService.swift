//
//  pizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Tameika Lawrence on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        
        if destination.distanceTo(coordinate: self.location) < 5000 {
            return true
        }
        return false
    }
    
    
    //        if destination.distance(to: self.location) > 5000 {
    
    
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        
        if isInRange(destination: destination) == true && pizzasAvailable >= 1 {
            pizzasAvailable -= 1
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    
    
}









