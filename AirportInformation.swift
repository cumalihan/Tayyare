//
//  AirportInformation.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 31.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct AirportInformation: View {
    var airport : AirportsList
    @State var txt = ""
    
    var body: some View {
        ZStack {
            Color(.clear).edgesIgnoringSafeArea(.all)
            VStack {
                ForEach(AirportsList.demoAirports) { airport in
                    HStack {
                        Text(airport.title)
                            .fontWeight(.bold)
                            .font(Font.system(.headline,design: .rounded))
                            .padding(.top)
                            .minimumScaleFactor(0.75)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        
                    }
                }
            }
            
        }
    }
}

struct AirportInformation_Previews: PreviewProvider {
    static var previews: some View {
        AirportInformation(airport: AirportsList.demoAirports.randomElement()!)
    }
}



struct  SearchView: View {
    @Binding var txt : String
    var data : [String]
    var body : some View {
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    TextField("Please Enter Airport Name",text: $txt)
                        .padding(.trailing, 75)
                    
                }.padding()
                    .background(Color.white)
                HStack {
                    Spacer()
                    Button(action: {
                        self.txt = ""
                        
                    }) {
                        Text("Cancel")
                    }.foregroundColor(.black)
                }.padding()
                
            }
            
          
            List(self.data.filter{$0.lowercased().contains(self.txt.lowercased())},id: \.self) { i in
                
                Button(action: {
                    NavigationView {
                        AirportsDetailView()
                    }
                    
                }) {
                    Text(i)
                }.foregroundColor(.black)
                
            }.frame(height: 500)
            
            
            
            
        }.padding()
        
        
        
    }

}
