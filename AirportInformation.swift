//
//  AirportInformation.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 31.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct AirportInformation: View {
    @State private var countryIndex = 0
    var countries = ["Germany","Italy","Turkey","UK"]
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $countryIndex, label: Text("Country")) {
                        ForEach(0 ..< countries.count) {
                            Text(self.countries[$0]).tag($0)
                        }
                        
                    }
                }
            }.navigationBarTitle(Text("Airport Information"))
            
        }
        
    }
    
}

struct AirportInformation_Previews: PreviewProvider {
    static var previews: some View {
        AirportInformation()
    }
}
