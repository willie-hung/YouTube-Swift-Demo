//
//  Athlete.swift
//  UFCAthleteListDemo
//
//  Created by 洪崧傑 on 2023/4/7.
//

import Foundation


// Create a Athlete object
class Athlete {
    var name: String
    var description: String
    var image: String
    // Implement a favorite state
    var favorite: Bool = false
    
    
    init(named name: String, description: String, image: String) {
        self.name = name
        self.description = description
        self.image = image
    }
}

