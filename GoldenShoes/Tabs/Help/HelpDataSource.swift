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
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return nil
        case 1:
            return "CONNECT WITH US"
        case 2:
            return nil
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
            // Connect with us
            return 3
        
        case 2:
            // Email us
            return 1
            
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
            default:
                fatalError("Unknown index path: \(indexPath).")
            }
        case 2:
            return createEmail(in: tableView, indexPath: indexPath)
            
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
        
        return cell
    }
    
    func createTwitter(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Twitter", for: indexPath)
        cell.textLabel?.text = "Twitter"
        ///cell.imageView?.image = UIImage(named: "Twitter")
        
        return cell
    }
    
    func createLinkedIn(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LinkedIn", for: indexPath)
        cell.textLabel?.text = "Linked In"
        ///cell.imageView?.image = UIImage(named: "LinkedIn")
        
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
