//
//  NextCoordinator.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation
import UIKit

class NextCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    var childs: [Coordinator] = []
    
    private let model: Model
    
    init(rootViewController: UINavigationController, model: Model) {
        self.rootViewController = rootViewController
        self.model = model
    }
    
    func start() {
        let nextViewController = NextViewController()
        nextViewController.model = model
        rootViewController.pushViewController(nextViewController, animated: true)
    }
}
