//
//  ViewProductViewController.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 14/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class ViewProductViewController: UIViewController, Storyboarded {
    
    weak var coordinator: BrowseCoordinator?
    var product: Product!
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = product.name
        productImage.image = product.image
        productPriceLabel.text = product.price
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
