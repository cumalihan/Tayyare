//
//  Plane.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 18.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct  Plane: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
}

extension Plane {
    static let demoPlanes = [
        Plane(title: "Boieng", imageName: "Boeing"),
        Plane(title: "Airbus", imageName: "Airbus"),
        Plane(title:"Concorde",imageName: "Concorde")
    ]
}
