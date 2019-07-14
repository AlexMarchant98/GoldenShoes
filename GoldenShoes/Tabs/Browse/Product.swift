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
    var brand: String
    var rating: Int
    var productCode: String
    var images: [UIImage]
    var favourited: Bool = false
    
    init(name: String, price: String, brand: String, rating: Int, productCode: String, images: [UIImage]) {
        self.name = name
        self.price = price
        self.brand = brand
        self.rating = rating
        self.productCode = productCode
        //self.colours = colours
        self.images = images
    }
    
    func updateFavourite() {
        self.favourited = !self.favourited
    }
    
    static func fetchProducts() -> [Product]
    {
        return [
            Product(name: "Alexander McQueen", price: "£240.00", brand: "Alexander McQueen", rating: 3, productCode: "0000001", images: [UIImage(named: "AlexanderMcQueen-Front")!, UIImage(named: "AlexanderMcQueen-Back")!, UIImage(named: "AlexanderMcQueen-Above")!]),
            Product(name: "Classic Oxfords", price: "£37.95", brand: "Samuel Windsor", rating: 4, productCode: "0000002", images: [UIImage(named: "ClassicBlackOxford-Front")!, UIImage(named: "ClassicBlackOxford-Above")!]),
            Product(name: "Air Max Deluxe", price: "£80.00", brand: "Nike", rating: 2, productCode: "0000003", images: [UIImage(named: "NikeAirMaxDeluxe-Front")!, UIImage(named: "NikeAirMaxDeluxe-Back")!, UIImage(named: "NikeAirMaxDeluxe-Above")!]),
            Product(name: "Prestige Oxfords", price: "£45.00", brand: "Samuel Windsor", rating: 5, productCode: "0000004", images: [UIImage(named: "PrestigeOxfordDressShoe-Front")!, UIImage(named: "PrestigeOxfordDressShoe-Back")!, UIImage(named: "PrestigeOxfordDressShoe-Above")!]),
            Product(name: "Royal Blue Oxfords", price: "£25.13", brand: "Royal Shoes", rating: 1, productCode: "0000005", images: [UIImage(named: "RoyalBlueOxfords-Front")!, UIImage(named: "RoyalBlueOxfords-Back")!]),
            Product(name: "Peep Toe Sandals", price: "£28.80", brand: "Evans", rating: 5, productCode: "0000006", images: [UIImage(named: "SilverPeepToeHeeledSandals-Front")!, UIImage(named: "SilverPeepToeHeeledSandals-Back")!, UIImage(named: "SilverPeepToeHeeledSandals-Above")!]),
            Product(name: "Balenciaga", price: "£318.49", brand: "Balendiaga", rating: 3, productCode: "0000007", images: [UIImage(named: "Balenciaga-Front")!, UIImage(named: "Balenciaga-Back")!, UIImage(named: "Balenciaga-Above")!]),
            Product(name: "Air Vapormax Plus", price: "£169.99", brand: "Nike", rating: 4, productCode: "0000008", images: [UIImage(named: "AirVaporMaxPlus-Front")!, UIImage(named: "AirVaporMaxPlus-Behind")!, UIImage(named: "AirVaporMaxPlus-Above")!]),
            Product(name: "Phantom SE Running Shoes", price: "£130.00", brand: "Under Armour", rating: 5, productCode: "0000009", images: [UIImage(named: "PhantomSERunningShoes-Front")!, UIImage(named: "PhantomSERunningShoes-Back")!, UIImage(named: "PhantomSERunningShoes-Above")!]),
            Product(name: "Frankie Low-Top Sneaker", price: "£360.00", brand: "Frankie", rating: 5, productCode: "0000010", images: [UIImage(named: "Frankie-Front")!, UIImage(named: "Frankie-Back")!, UIImage(named: "Frankie-Above")!]),
            Product(name: "Pigalle 85 patent-leather pumps", price: "£495.00", brand: "Christian Louboutin", rating: 5, productCode: "0000011", images: [UIImage(named: "Pigalle85PatentLeatherPumps-Front")!, UIImage(named: "Pigalle85PatentLeatherPumps-Back")!, UIImage(named: "Pigalle85PatentLeatherPumps-Above")!])
        ]
    }
}
