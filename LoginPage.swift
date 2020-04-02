//
//  LoginPage.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 21.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0,opacity: 1.0)


struct LoginPage: View {
    @State var username = ""
    @State var password = ""
    @State var isPresented = false
    let storedUsername = "1"
    let storedPassword = "1"
    @State var editingMode: Bool = false
    @Binding var loginPage: Int
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucced: Bool = false
    var body: some View {
        ZStack {
            VStack {
                WelcomeText()
                UserImage()
                UsernameTextField(username: $username,editingMode: $editingMode)
                PasswordSecureField(password: $password)
                if authenticationDidFail {
                    Text("Information not correct.Try again.")
                        .offset(y:-10)
                        .foregroundColor(.red)
                }

                Button(action: {
                    if self.username == self.storedUsername && self.password == self.storedPassword {
                        self.authenticationDidSucced = true
                        self.authenticationDidFail = false
                        self.loginPage = 1
                        
                    }else {
                        self.authenticationDidFail = true
                    }
                    }) {
                    LoginButtonContent()
                 }
                .padding()
                HStack {
                    Text("I'm new user.")
                    Button(action: {
                        self.isPresented.toggle()
                    },label: {
                        Text("Create an account")
                    })
                        .sheet(isPresented: self.$isPresented, content: {
                            RegisterPage()
                        })
                    
                    
                }
            }
            
        
         
        }
            
        .offset(y:editingMode ? -150 : 0)
       
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("Concorde")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150,height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220,height: 60)
            .background(Color.black)
            .cornerRadius(15.0)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    @Binding var editingMode: Bool
    var body: some View {
        return TextField("Username", text: $username,onEditingChanged: { edit in
            if edit {
                self.editingMode = true
                
            }else {
                self.editingMode = false
            }
            
        })
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,20)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String
    
   
    var body: some View {
        return SecureField("Password",text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,20)
    }
}
