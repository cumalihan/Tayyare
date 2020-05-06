//
//  NewLogin.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 6.05.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct NewLogin: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(.bottom,30)
                Text("Explore the Airplane")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("Lufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı zam")
                    .foregroundColor(.white)
                    .frame(width: 320)
                    .padding(.top,20)
                    .padding(.bottom,50)
                Spacer()
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                HStack {
                    Spacer()
                    Text("Login")
                        .foregroundColor(.white)
                        .padding(20)
                    Spacer()
                    Text("Signup")
                        .foregroundColor(.white)
                        .padding(20)
                    Spacer()
                }
            }
            
            
        }
        
    }
}

struct NewLogin_Previews: PreviewProvider {
    static var previews: some View {
        NewLogin()
    }
}
