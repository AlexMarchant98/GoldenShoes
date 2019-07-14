//
//  ProductCollectionViewCell.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var product: Product! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let currentProduct = self.product {
            name.text = currentProduct.name
            price.text = currentProduct.price
            image.image = currentProduct.image
        } else {
            name.text = "Add Product"
            price.text = "£0.99"
        }
    }
}
