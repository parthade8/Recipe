//
//  LoginViewPage.swift
//  Recipe
//
//  Created by De, Partha on 23/02/23.
//

import SwiftUI

struct LoginViewPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack(alignment: .center){
            Image("loginsignup")
                .resizable()
                .ignoresSafeArea()
            Text("LOGIN")
                .foregroundColor(.white)
                .font(Font.custom("monoton", size: 85))
                .padding(.bottom,300)
            TextField("  Username", text: $username)
                .font(.system(size: 25))
                .background(.white)
            //                    .frame(height: 35)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.leading,.trailing],45)
                .padding(.bottom,50)
            SecureField("  Password", text: $password)
                .font(.system(size: 25))
                .background(.white)
            //                    .frame(height: 35)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.leading,.trailing],45)
                .padding(.top, 100)
            NavigationLink(destination: recipeDashboardView()) {
                Text("Login")
                    .foregroundColor(.white)
                    .font(Font.custom("banks-miles", size: 30))
                    .padding(.top,300)
                    .padding([.leading,.trailing], 10)
            }
            NavigationLink(destination: SignupViewPage()) {
                Text("New User? SignUp.")
                    .foregroundColor(.white)
                    .font(Font.custom("bank-miles", size: 20))
                    .padding(.top, 450)
            }
        }
        
    }
}

struct LoginViewPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewPage()
    }
}
