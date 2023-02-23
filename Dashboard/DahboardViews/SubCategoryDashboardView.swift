//
//  SubCategoryDashboardView.swift
//  Recipe
//
//  Created by De, Partha on 21/02/23.
//

import SwiftUI

struct SubCategoryDashboardView: View{
    @ObservedObject
    var viewModel: SubCategoryListViewModel
    
    var body: some View{
        VStack{
            SubCategoryListView(subModels: viewModel.subModels)
        }
    }
}

