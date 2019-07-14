//
//  ViewProductCollectionViewCell.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 14/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class ViewProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    
    func setImage(image: UIImage) {
        self.image.image = image
    }
}
