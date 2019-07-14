//
//  Coordinator.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get }
}

extension Coordinator {
    func getAlertStyle() -> UIAlertController.Style {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            return UIAlertController.Style.actionSheet
        default:
            return UIAlertController.Style.alert
        }
    }
}
