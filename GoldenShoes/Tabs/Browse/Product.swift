//
//  Product.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class Product {
    var name: String
    var price: String
    var image: UIImage
    
    init(name: String, price: String, image: UIImage) {
        self.name = name
        self.price = price
        self.image = image
    }
    
    static func fetchProducts() -> [Product]
    {
        return [
            Product(name: "Alexander McQueen", price: "£240.00", image: UIImage(named: "AlexanderMcQueen")!),
            Product(name: "Classic Oxfords", price: "£37.95", image: UIImage(named: "ClassicBlackOxford")!),
            Product(name: "Air Max Deluxe", price: "£80.00", image: UIImage(named: "NikeAirMaxDeluxe")!),
            Product(name: "Prestige Oxfords", price: "£45.00", image: UIImage(named: "PrestigeOxfordDressShoe")!),
            Product(name: "Royal Blue Oxfords", price: "£25.13", image: UIImage(named: "RoyalBlueOxfords")!),
            Product(name: "Peep Toe Sandals", price: "£28.80", image: UIImage(named: "SilverPeepToeHeeledSandals")!),
            Product(name: "Balenciaga", price: "£318.49", image: UIImage(named: "Balenciaga")!),
            Product(name: "Air Vapormax Plus", price: "£169.99", image: UIImage(named: "AirVapormaxPlus")!),
            Product(name: "Phantom SE Running Shoes", price: "£130.00", image: UIImage(named: "PhantomSERunningShoes")!),
            Product(name: "Frankie Low-Top Sneaker", price: "£360.00", image: UIImage(named: "Frankie")!),
            Product(name: "Pigalle 85 patent-leather pumps", price: "£495.00", image: UIImage(named: "Pigalle85PatentLeatherPumps")!)
        ]
    }
}
