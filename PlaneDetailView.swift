//
//  PlaneDetailView.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 19.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct PlaneDetailView: View {
    var plane: Plane
    
    
    
    var body: some View {
        VStack {
            Text(plane.title)
            
            Image(plane.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
        
    }
}

struct PlaneDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaneDetailView(plane: Plane.demoPlanes.randomElement()!)
    }
}
