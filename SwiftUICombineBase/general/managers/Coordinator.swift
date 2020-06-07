//
//  Coordinator.swift
//  SwiftUICombineBase
//
//  Created by Shalom Friss on 5/25/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //let vc = UIViewController.instantiate()
        //vc.coordinator = self
        //navigationController.pushViewController(vc, animated: false)
    }
}

