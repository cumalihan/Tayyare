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
        VStack(alignment: .center) {
            Text(plane.title)
                .font(.headline)
             
            Image(plane.imageDetail)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
                
            
            ScrollView(.vertical){
            Text(plane.detail)
                .multilineTextAlignment(.center)
                .truncationMode(.middle)
                .padding()
                .padding()
                Spacer()
            }
      
        }
        
    }
}

struct PlaneDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaneDetailView(plane: Plane.demoPlanes.randomElement()!)
    }
}
