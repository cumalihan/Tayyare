//
//  AirportInformation.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 31.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct AirportInformation: View {
    @State var txt = ""
    
    var body: some View {
        ZStack {
            Color(.clear).edgesIgnoringSafeArea(.all)
            SearchView(txt: $txt,data: data)
        }
    }
}

struct AirportInformation_Previews: PreviewProvider {
    static var previews: some View {
        AirportInformation()
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
                
                Text(i)
                
            }.frame(height: 500)
            
            
            
            
        }.padding()
        
        
        
    }

}
