//
//  LoginView.swift
//  SignUp
//
//  Created by JIHYE SEOK on 4/26/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Dongeons and Wagons")
                .fontWeight(.heavy)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .padding(.bottom, 30)
            
            Image(systemName: "person.circle")
                .font(.system(size: 150))
                .foregroundStyle(.gray)
                .padding(.bottom, 40)
            
            Group {
                TextField("User Name", text: $username)
                SecureField("Password", text: $password)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2))
            
            Button {
                print("Login tapped")
            } label: {
                Text("Login")
            }
            .padding()
            .background((username.isEmpty || password.isEmpty) ? .gray : .blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .disabled((username.isEmpty || password.isEmpty))
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
