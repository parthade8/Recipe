//
//  RecipeHomePage.swift
//  Recipe
//
//  Created by De, Partha on 22/02/23.
//

import SwiftUI

struct RecipeHomePage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color("primaryColor")
                    .ignoresSafeArea()
                Image("salad")
                    .resizable()
                    .ignoresSafeArea()
                NavigationLink(destination: recipeDashboardView()) {
                    Text("RECIPE")
                        .foregroundColor(.red)
                        .font(Font.custom("Monoton", size: 80))
                        .shadow(color: Color(UIColor(displayP3Red: 92/255, green: 252/255, blue: 255/255, alpha: 2)), radius: 5, x: 1, y: 1)
                }
                
            }
        }
    }
}




struct RecipeHomePage_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHomePage()
    }
}
