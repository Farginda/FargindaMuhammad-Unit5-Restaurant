//
//  Order.swift
//  Restaurant
//
//  Created by Farginda on 12/4/18.
//  Copyright © 2018 Farginda. All rights reserved.
//

import Foundation


// order model object with items that user has added
struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

