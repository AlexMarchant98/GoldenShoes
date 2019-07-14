//
//  HelpCoordinator.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit
import MessageUI

class HelpCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init() {
        self.navigationController = UINavigationController()
        
        let viewController = HelpViewController.instantiate()
        viewController.tabBarItem = UITabBarItem(title: "Help", image: nil, tag: 1)
        viewController.coordinator = self
        
        navigationController.viewControllers = [viewController]
    }
    
    func showFaqs() {
        let vc = FAQViewController(style: .plain)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showReturns() {
        let vc = ReturnsViewController(style: .plain)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showFacebook() {
        if UIApplication.shared.canOpenURL(URL(string: "fb://profile/100000437557062")!) {
        UIApplication.shared.open(URL(string: "fb://profile/100000437557062")!, options: [:])
        } else {
            UIApplication.shared.open(URL(string: "https://www.facebook.com/AleeexMarchant")!, options: [:])
        }
    }
    
    func showTwitter() {
        if UIApplication.shared.canOpenURL(URL(string: "twitter://user?screen_name=TheRock")!) {
            UIApplication.shared.open(URL(string: "twitter://user?screen_name=TheRock")!, options: [:])
        } else {
            UIApplication.shared.open(URL(string: "https://twitter.com/TheRock")!, options: [:])
        }
    }
    
    func showLinkedIn() {
        if UIApplication.shared.canOpenURL(URL(string: "linkedin.com/in/alex-marchant-077974137")!) {
            UIApplication.shared.open(URL(string: "linkedin.com/in/alex-marchant-077974137")!, options: [:])
        } else {
            UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/alex-marchant-077974137")!, options: [:])
        }
    }
    
    func showEmail() {
        if MFMailComposeViewController.canSendMail() {
            let vc = MFMailComposeViewController()
            
            vc.setToRecipients(["support@goldenshoe.co.uk"])
            
            navigationController.pushViewController(vc, animated: true)
        }
    }
}
