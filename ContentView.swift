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
    @State var loginPage = 0
 
    
    var body: some View {
        
        VStack {
            if loginPage == 1 {
                
                VStack {
                    ZStack{
                        
                        if self.index == 0{
                            MyFlights()
                                .padding()
                        }
                        if self.index == 1 {
                              PlaneList()
                            
                        }
                            
                            
                        if self.index == 2{
                            
                            AirportInformation()
                                .padding()
                            
                            
                        }
                    }
                    
                    CircleTab(index: self.$index)
                    
                }
            } else {
                LoginPage(loginPage: self.$loginPage)
            }
        }
        
      
        
        
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
                        
                        Image("home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50,height: 50)
                            .foregroundColor(Color.black.opacity(0.2))
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
                        
                        Image("plane")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80,height: 80)
                            .foregroundColor(Color.black.opacity(0.2))
                        
                        
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
                    
                        Text("Plane Information").foregroundColor(Color.black.opacity(0.7))
                    }
                }
                
            }
            
            Spacer(minLength: 15)
            
            Button(action: {
                
                self.index = 2
                
            }) {
                VStack{
                    
                    if self.index != 2{
                        
                        Image("airport")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50,height: 50)
                            .foregroundColor(Color.black.opacity(0.2))
                        
                        
                    }
                    else{
                        
                        Image("airport")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Airport Information").foregroundColor(Color.black.opacity(0.7))
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
        NavigationView {
            ZStack {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(Plane.demoPlanes) { plane in
                            GeometryReader { proxy in
                                NavigationLink(destination: PlaneDetailView(plane: plane)) {
                                    
                                    VStack {
                                        Text(plane.title)
                                            .fontWeight(.bold)
                                            .font(Font.system(.headline,design: .rounded))
                                            .padding(.top)
                                            .minimumScaleFactor(0.75)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.black)
                                            
                                            .multilineTextAlignment(.center)
                                        Image(plane.imageName)
                                            .renderingMode(.original)
                                            .resizable()
                                            .scaledToFit()
                                            .padding()
                                            .shadow(color: .gray,radius: 5)
                                    }
                                    .padding()
                                    .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX,proxy.size.width), height: proxy.size.height - 50)
                                    
                                    
                                }
                                .background(Color("LightShadow"))
                                .cornerRadius(10)
                                .padding()
                                .shadow(radius: 15)
                                .layoutPriority(1)
                                .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 40), axis: (x: -4, y: -3, z: -3))
                                .shadow(color: Color("LightShadow"), radius: 10, x: -8, y: -8)
                     
                            }
                            .frame(width: 200, height: 300)
                        }
                    }
                }
                
                Spacer()
                
            }
            .navigationBarTitle("Plane List")
            
        }
        
    }
}


