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
    
    @IBOutlet weak var productImagesCollectionView: UICollectionView!
    @IBOutlet weak var sizesPickerView: UIPickerView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var productCodeLabel: UILabel!
    @IBOutlet weak var favouriteButton: UIButton!
    
    @IBAction func favouriteButtonTapped(_ sender: Any) {
        product.updateFavourite()
        
        setFavouriteButtonImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = product.name
        productPriceLabel.text = product.price
        brandLabel.text = product.brand
        ratingLabel.text = "\(product.rating) Stars"
        productCodeLabel.text = "\(product.productCode)"
        setFavouriteButtonImage()
        
        productImagesCollectionView.dataSource = self
        productImagesCollectionView.delegate = self
        
        sizesPickerView.dataSource = self
        sizesPickerView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        coordinator?.navigationController.setNavigationBarHidden(true, animated: true)
    }
    
    private func setFavouriteButtonImage() {
        if product.favourited == true {
            favouriteButton.setImage(UIImage(named: "Favourited"), for: UIControl.State.normal)
        } else {
            favouriteButton.setImage(UIImage(named: "Favourite"), for: UIControl.State.normal)
        }
    }

}

extension ViewProductViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewProductCollectionViewCell", for: indexPath) as! ViewProductCollectionViewCell
        
        cell.setImage(image: product.images[indexPath.item])
        
        return cell
    }
}

extension ViewProductViewController: UIScrollViewDelegate, UICollectionViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.productImagesCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: (roundedIndex * cellWidthIncludingSpacing) - scrollView.contentInset.left, y: scrollView.contentInset.top)
        
        targetContentOffset.pointee = offset
    }
}

extension ViewProductViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Constants.sizes.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Constants.sizes[row]
    }
    
}
