//
//  AirportsList.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 31.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import Foundation

struct AirportsList: Identifiable {
    var id = UUID()
    var title: String
    
}

extension AirportsList {
    static let demoAirports = [
        
        AirportsList(title: "Adana Airport"),
        AirportsList(title: "Malatya Airport"),
    ]
}
