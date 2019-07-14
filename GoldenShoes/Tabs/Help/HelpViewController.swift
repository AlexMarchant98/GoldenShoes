//
//  HelpViewController.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit
import MessageUI

class HelpViewController: UITableViewController, Storyboarded {
    
    weak var coordinator: HelpCoordinator?
    
    let helpDataSource = HelpDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Help"
        
        tableView.dataSource = helpDataSource
    }
    
    @objc func showEmail() {
        if MFMailComposeViewController.canSendMail() {
            let vc = MFMailComposeViewController()
            
            vc.mailComposeDelegate = self
            
            vc.setToRecipients(["support@goldenshoe.co.uk"])
            
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    /// When the Share Score cell is tapped start the share score process, otherwise do nothing.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let fAQsPath = IndexPath(row: 0, section: 0)
        let returnsPath = IndexPath(row: 1, section: 0)
        let facebookPath = IndexPath(row: 0, section: 1)
        let twitterPath = IndexPath(row: 1, section: 1)
        let linkedInPath = IndexPath(row: 2, section: 1)
        let emailPath = IndexPath(row: 0, section: 2)
        
        
        switch indexPath {
        case fAQsPath:
            coordinator?.showFaqs()
        case returnsPath:
            coordinator?.showReturns()
        case facebookPath:
            coordinator?.showFacebook()
        case twitterPath:
            coordinator?.showTwitter()
        case linkedInPath:
            coordinator?.showLinkedIn()
        case emailPath:
            if MFMailComposeViewController.canSendMail() {
                let vc = MFMailComposeViewController()
                
                vc.mailComposeDelegate = self
                
                vc.setToRecipients(["support@goldenshoe.co.uk"])
                
                self.present(vc, animated: true, completion: nil)
            }
        default:
            print("Do nothing")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
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

extension HelpViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
