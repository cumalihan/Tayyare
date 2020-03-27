//
//  RegisterPage.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 26.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct RegisterPage: View {
   
    
   
   
    
    var body: some View {
        VStack {
            SLogin()
            SEmail()
            SPassword()
            SRPassword()
            RegisterButton()
            
        }
        
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}

struct SLogin: View {
     @State var username:String = ""
    var body: some View {
        TextField("Username",text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,10)
    }
}

struct SEmail: View {
     @State var email:String = ""
    var body: some View {
        TextField("E-Mail",text:$email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,10)
    }
}

struct SPassword: View {
    @State var password:String = ""
    var body: some View {
        SecureField("Password",text:$password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,10)
    }
}

struct SRPassword: View {
     @State var rPassword:String = ""
    var body: some View {
        SecureField("Repeat Password",text:$rPassword)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,20)
    }
}

struct RegisterButton: View {
    var body: some View {
        Text("Register")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220,height: 60)
            .background(Color.black)
            .cornerRadius(15.0)
    }
}
