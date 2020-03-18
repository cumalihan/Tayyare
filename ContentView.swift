//
//  ContentView.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 18.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct ContentView: View {
       @State var index = 0
       
       var body: some View {
           
           VStack(spacing: 0){
               
               ZStack{
                   
                   if self.index == 0{
                       Text("This is your home")
                       Color.black.opacity(0.05)
                        
                   }
                   
                   else{
                       
                       Color.white
                        PlaneList()
                   }
               }
               
               CircleTab(index: self.$index)
               
           }
           .edgesIgnoringSafeArea(.top)
       }
     
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CircleTab : View {
     
     @Binding var index : Int
     
     var body : some View{
         
         
         HStack{
             
             Button(action: {
                 
                 self.index = 0
                 
             }) {
                 
                 VStack{
                     
                     if self.index != 0{
                         
                         Image("home").foregroundColor(Color.black.opacity(0.2))
                     }
                     else{
                         
                         Image("home")
                             .resizable()
                             .frame(width: 25, height: 23)
                             .foregroundColor(.white)
                             .padding()
                             .background(Color.black)
                             .clipShape(Circle())
                             .offset(y: -20)
                             .padding(.bottom, -20)
                         
                         Text("Home").foregroundColor(Color.black.opacity(0.7))
                     }
                 }
                 
                 
             }
             
             Spacer(minLength: 15)
             
           
             
             
   
             
             Button(action: {
                 
                 self.index = 1
                 
             }) {
                 
                VStack{
                    
                    if self.index != 1{
                        
                        Image("plane").foregroundColor(Color.black.opacity(0.2))
                    }
                    else{
                        
                        Image("plane")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Plane İnformation").foregroundColor(Color.black.opacity(0.7))
                    }
                }
             }
             
         }.padding(.vertical,-10)
         .padding(.horizontal, 25)
         .background(Color.white)
         .animation(.spring())
     }
 }


struct PlaneList: View {
    var body : some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach(Plane.demoPlanes) { plane in
                    VStack {
                        Text(plane.title)
                            .padding([.leading,.top,.trailing])
                            .multilineTextAlignment(.center)
                        Image(plane.imageName)
                        .resizable()
                        .scaledToFit()
                        .padding()
                    }
                    .frame(width: 150, height: 150)
                    .background(Color.white)
                .cornerRadius(10)
                .padding()
                .shadow(radius: 3)
                }
            }
        }
    }
}
