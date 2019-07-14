//
//  ReturnsViewController.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class ReturnsViewController: UITableViewController {
    
    
    var returnsTextView = ReturnsTextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Returns"
        
        extendedLayoutIncludesOpaqueBars = true
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func loadView() {
        view = returnsTextView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        returnsTextView.loadContent()
    }
    
}
