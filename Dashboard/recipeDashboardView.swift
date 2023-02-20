//
//  recipeDashboardView.swift
//  Recipe
//
//  Created by De, Partha on 20/02/23.
//

import SwiftUI

struct Dashboard: View{
    var body: some View{
        NavigationView{
            ScrollView(.horizontal){
                HStack{
                    
                }
            }.navigationTitle("Today's Recipes 🔥")
        }
    }
}


struct recipeDashboardView: View {
    var body: some View {
        NavigationView{
            TabView{
                Dashboard()
                    .tabItem{
                        Image(systemName: "house")
                    }
                Text("Bookmark")
                    .tabItem{
                        Image(systemName: "bookmark")
                    }
                Profile()
                    .tabItem{
                        Image(systemName: "person")
                    }
            }
        }
        ScrollView(.horizontal){
            HStack{
                
            }.navigationTitle("Today's Recipes🔥")
            Spacer()
        }
    }
    
}


struct recipeDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        recipeDashboardView()
    }
}
