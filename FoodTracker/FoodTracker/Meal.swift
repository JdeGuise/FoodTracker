//
//  Meal.swift
//  FoodTracker
//
//  Created by goose on 8/15/17.
//  Copyright © 2017 goose. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    //MARK: Properties

    
    //MARK: Initialization
    var name: String?
    var photo: UIImage?
    var rating: Int?
    
    init?(name: String, photo: UIImage?, rating: Int) {

        // Initialization should fail if there is no name or if the rating is negative
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
