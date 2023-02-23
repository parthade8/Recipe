//
//  CategoryDashboardView.swift
//  Recipe
//
//  Created by De, Partha on 21/02/23.
//

import SwiftUI

struct CategoryDashboardView: View{
    @ObservedObject
    var viewModel: CategoryListViewModel = .init()
    @Binding var selectedCategory: CategoryModel?
    var body: some View{
        VStack{
            if viewModel.isLoading{
                Text("Loading...")
            }
            else{
                CategoryListView(models: viewModel.models, selectedCategory: $selectedCategory)
            }
            
        }
    }
}
