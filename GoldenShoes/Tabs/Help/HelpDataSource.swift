//
//  HelpDataSource.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

class HelpDataSource: NSObject, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return nil
        case 1:
            return "CONTACT US"
            
        default:
            fatalError("Unknown table view section: \(section).")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            // Infomation
            return 2
            
        case 1:
            // Contact Us
            return 4
            
        default:
            fatalError("Unknown table view section: \(section).")
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                return createFAQs(in: tableView, indexPath: indexPath)
            case 1:
                return createReturns(in: tableView, indexPath: indexPath)
            default:
                fatalError("Unknown index path: \(indexPath).")
            }
        case 1:
            switch indexPath.row {
            case 0:
                return createFacebook(in: tableView, indexPath: indexPath)
            case 1:
                return createTwitter(in: tableView, indexPath: indexPath)
            case 2:
                return createLinkedIn(in: tableView, indexPath: indexPath)
            case 3:
                return createEmail(in: tableView, indexPath: indexPath)
            default:
                fatalError("Unknown index path: \(indexPath).")
            }
            
        default:
            fatalError("Unknown index path: \(indexPath).")
        }
    }
    
    /// Create the FAQ row
    func createFAQs(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FAQs", for: indexPath)
        cell.textLabel?.text = "Frequently Asked Questions"
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    /// Create the returns row
    func createReturns(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Returns", for: indexPath)
        cell.textLabel?.text = "Returning Items"
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    /// Create the Facebook row
    func createFacebook(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Facebook", for: indexPath)
        cell.textLabel?.text = "Facebook"
        ///cell.imageView?.image = UIImage(named: "Facebook")
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func createTwitter(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Twitter", for: indexPath)
        cell.textLabel?.text = "Twitter"
        ///cell.imageView?.image = UIImage(named: "Twitter")
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func createLinkedIn(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LinkedIn", for: indexPath)
        cell.textLabel?.text = "Linked In"
        ///cell.imageView?.image = UIImage(named: "LinkedIn")
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    /// Create the email row
    func createEmail(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Email", for: indexPath)
        cell.textLabel?.text = "Email Us"
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
}
