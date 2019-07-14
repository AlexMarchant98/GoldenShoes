//
//  BrowseCoordinator.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class BrowseCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init() {
        self.navigationController = UINavigationController()
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.search, tag: 0)
        
        let viewController = BrowseViewController.instantiate()
        viewController.coordinator = self
        
        navigationController.viewControllers = [viewController]
    }
    
    func showViewProduct(selectedProduct: Product) {
        let vc = ViewProductViewController.instantiate()
        self.navigationController.setNavigationBarHidden(false, animated: false)
        vc.coordinator = self
        
        vc.product = selectedProduct
        
        navigationController.pushViewController(vc, animated: true)
    }

}
