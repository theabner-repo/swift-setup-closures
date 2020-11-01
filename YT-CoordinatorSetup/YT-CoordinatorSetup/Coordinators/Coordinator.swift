//
//  Coordinator.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var rootViewController: UINavigationController { get }
    var childs: [Coordinator] { get set }
    
    func start()
}
