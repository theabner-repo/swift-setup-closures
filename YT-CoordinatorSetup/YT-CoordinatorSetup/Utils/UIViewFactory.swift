//
//  UIViewFactory.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation

public func create<T: NSObject>(_ setup: (T) -> ()) -> T {
    let obj = T()
    setup(obj)
    return obj
}
