//
//  MainTabBarCoordinator.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class MainTabBarCoordinator: UITabBarController {
    
    let browseCoordinator = BrowseCoordinator()
    let helpCoordinator = HelpCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [browseCoordinator.navigationController, helpCoordinator.navigationController]
        
    }
    
}
