//
//  FAQViewController.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class FAQViewController: UITableViewController {
    
    let dataSource = FAQDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "FAQs"
        
        extendedLayoutIncludesOpaqueBars = true
        navigationItem.largeTitleDisplayMode = .never
        
        tableView.dataSource = dataSource
        tableView.register(FAQTableViewCell.self, forCellReuseIdentifier: "Cell")
    }

}
