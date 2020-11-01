//
//  NextViewController.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var model: Model?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = model?.name
        view.backgroundColor = .systemBackground
    }

}
