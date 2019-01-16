//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Farginda on 12/4/18.
//  Copyright © 2018 Farginda. All rights reserved.
//

import Foundation

// represents categories in the menu
struct Categories: Codable {
    let categories: [String]
}

// represents amount of time until order will be ready
struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}

