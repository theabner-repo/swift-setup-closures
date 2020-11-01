//
//  ExampleCoordinator.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation
import UIKit

class ExampleCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    var childs: [Coordinator] = []
    
    
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    func start() {
        let viewController = ExampleViewController()
        viewController.coordinator = self
        rootViewController.pushViewController(viewController, animated: false)
    }
    
    //MARK: - Navigation
    func goToNextViewController(model: Model) {
        let nextCoordinator = NextCoordinator(rootViewController: rootViewController, model: model)
        nextCoordinator.start()
        childs.append(nextCoordinator)
    }
}
