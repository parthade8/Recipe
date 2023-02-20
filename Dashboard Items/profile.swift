//
//  profile.swift
//  Recipe
//
//  Created by De, Partha on 20/02/23.
import Foundation
import SwiftUI
struct Profile: View{
    var body: some View{
        NavigationView{
            VStack(alignment: .leading){
                HStack{
                    Text("Name:")
                        .font(.body)
                    Text("Partha De")
                    Spacer()
                }.padding(.all,5)
                    .padding(.leading,10)
                HStack{
                    Text("Age:")
                        .font(.body)
                    Text("23")
                }.padding(.all,5)
                    .padding(.leading,10)
                HStack{
                    Text("Email:")
                        .font(.body)
                    Text("parthade@deloitte.com")
                }.padding(.all,5)
                    .padding(.leading, 10)
                Spacer()
            }.navigationTitle("Profile")
        }
    }
}

