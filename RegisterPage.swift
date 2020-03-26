//
//  RegisterPage.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 26.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct RegisterPage: View {
    @State var username = ""
    @State var password = ""
    var body: some View {
        TextField("Username",text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(15.0)
            .padding(.bottom,20)
        
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}
