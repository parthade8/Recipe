//
//  SIgnupViewPage.swift
//  Recipe
//
//  Created by De, Partha on 23/02/23.
//

import SwiftUI

struct SignupViewPage: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var dob: String = ""
    var body: some View {
        ZStack(alignment: .center) {
            Image("loginsignup")
                .resizable()
                .ignoresSafeArea()
            Text("SIGNUP")
                .foregroundColor(.white)
                .font(Font.custom("monoton", size: 75))
                .padding(.bottom,500)
            TextField(" Username", text: $username)
                .font(.system(size: 25))
                .background(.white)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.leading,.trailing],45)
                .padding(.bottom, 250)
            TextField("  Email", text: $email)
                .font(.system(size: 25))
                .background(.white)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.leading,.trailing],45)
                .padding(.bottom, 150)
            SecureField("  Password", text: $password)
                .font(.system(size: 25))
                .background(.white)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.leading,.trailing],45)
                .padding(.bottom, 50)
            TextField("  Date of Birth", text: $dob)
                .font(.system(size: 25))
                .background(.white)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.leading,.trailing],45)
                .padding(.top, 50)
            NavigationLink(destination: recipeDashboardView()) {
                Text("SignUp")
                    .foregroundColor(.white)
                    .font(Font.custom("banks-miles", size: 30))
                    .padding(.top,250)
            }
        }
    }
}

struct SignupViewPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupViewPage()
    }
}
