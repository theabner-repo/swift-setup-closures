//
//  Model.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation

struct Model {
    let name: String
}

extension Model {
    static func examples() -> [Model] {
        return [Model(name: "Esta es una prubea"), Model(name: "Modelo de prueba"), Model(name: "Celda seleccionable"),
                Model(name: "Más modelo de prueba"), Model(name: "Modelo de prueba para YouTube"), Model(name: "Suscríbete a mi canal 😎")]
    }
}
