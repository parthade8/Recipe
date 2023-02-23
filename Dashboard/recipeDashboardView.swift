//
//  recipeDashboardView.swift
//  Recipe
//
//  Created by De, Partha on 20/02/23.
//

import SwiftUI
import Foundation

struct Dashboard: View{
    
    @State var selectCategory: CategoryModel?
    var foodCategory: String { selectCategory?.strCategory ?? "Beef"}
    var body: some View{
        NavigationView {
            VStack(alignment: .leading){
                ScrollView(showsIndicators: false){
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        CategoryDashboardView(selectedCategory: $selectCategory)
                            .padding(.leading)
                            .frame(height: 150)
                    }
                    Text("\(foodCategory) Meals")
                        .font(.bold(.title)())
                        .padding(.leading)
                    
                    
                    SubCategoryDashboardView(viewModel: SubCategoryListViewModel(selectedCategoryName: foodCategory))
                }
            }.navigationTitle("Today's Recipes 🔥")
        }
        
    }
}



struct recipeDashboardView: View {
    @State var selectedCategory: CategoryModel?
    var body: some View {
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
    
}




struct recipeDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        recipeDashboardView()
    }
}
