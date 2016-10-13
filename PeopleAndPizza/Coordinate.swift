//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Tameika Lawrence on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Create the Coordinate.swift file and declare a class called Coordinate.

//Add two stored properties:

//A Double called latitude

//Another Double called longitude

//Add four computed properties:

//A Bool called isInNorthernHemisphere. This returns true if the coordinate is in the Northern Hemisphere. (A coordinate is in the Northern Hemisphere if its latitude is positive.)
//A Bool called isInSoutherHemisphere. This returns true if the coordinate is in the Souther Hemisphere. (A coordinate is in the Souther Hemisphere if its latitude is negative.)
//A Bool called isInWesternHemisphere. This returns true if the coordinate is in the Western Hemisphere. (A coordinate is in the Western Hemisphere if its longitude is positive.)
//A Bool called isInEasternHemisphere. This returns true if the coordinate is in the Eastern Hemisphere. (A coordinate is in the Eastern Hemisphere if its longitude is negative.)

//Create a method called distanceTo(). This method takes one parameter called coordinate. This parameter is another Coordinate class. distanceTo() should return the distance, in kilometers, between the two points.

//The distance between two coordinates requires some hairy math. The formula is acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000. acos() and sin() are both functions you can call in Swift.

//latitude and longitude need to be converted to radians. A radians property has been created for you to do this, so you can call latitude.radians to get the latitude in radians.

class Coordinate {
    
    var latitude: Double
    var longitude: Double
    
    //var isNorthernHemisphere: Bool {return latitude >= 0}
    
    var isInNorthernHemisphere: Bool {
        
        get {
            if latitude > 0.0 {
                return true
            }
            return false
        }
    }
    
    var isInSoutherHemisphere: Bool {
        
        get {
            if latitude < 0.0 {
                
                return true
            }
            return false
        }
    }
    
    var isInWesternHemisphere: Bool {
        
        get {
            if longitude > 0.0 {
                return true
            }
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        
        get {
            if longitude < 0.0 {
                return true
            }
            return false
        }
    }
    
    
    //can also do: var isInNortherHemisphere:Bool{return latitude > 0}
    //can also do: 
    
//    var isInSomeOtherHemisphere: Bool {
//        if latitude > 0.0 {
//    return true
//        }


    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func distanceTo(coordinate: Coordinate) -> Double {
        
        return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude - coordinate.longitude)) * 6371.0
    
    }
}





extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}







































