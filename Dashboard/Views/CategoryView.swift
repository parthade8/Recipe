//
//  CategoryListView.swift
//  Recipe
//
//  Created by De, Partha on 20/02/23.
//

import Foundation
import SwiftUI

struct CategoryItem: View{
    
    let model: CategoryModel
    //Display Block
    var body: some View{
        VStack(spacing: 8){
            AsyncImage(url: URL(string: model.strCategoryThumb)){
                image in image
                    .resizable()
            }placeholder: {
                Color.blue.opacity(0.1)
            }
            .frame(width: 120, height: 120)
            .scaledToFit()
            .clipShape(Circle())
            
            Text(model.strCategory)
        }.background(RoundedRectangle(cornerRadius: 8)
            .stroke(lineWidth: 2))
    }
}

struct CategoryListView: View {
    
    let models: [CategoryModel]
    //Binding Variable
    @Binding var selectedCategory: CategoryModel?
    //Display every item in the json file
    var body: some View {
        LazyHStack(spacing: 15){
            ForEach(models) { model in
                CategoryItem(model: model)
                    .onTapGesture {
                        selectedCategory = model
                        print("\(selectedCategory?.strCategory ?? "")")
                        
                    }
            }
        }
    }
}

//preview of selected models
//
struct CategoryListView_Previews: PreviewProvider{
    static var previews: some View{
        CategoryDashboardView(selectedCategory:  .constant(nil))
    }
}
