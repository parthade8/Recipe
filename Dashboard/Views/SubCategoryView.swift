//
//  SubCategoryListView.swift
//  Recipe
//
//  Created by De, Partha on 21/02/23.
//

import Foundation
import SwiftUI
struct SubCategoryView: View{
    
    let subModel: SubCategoryModel
    var body: some View{
        ZStack(alignment: .leading){
            AsyncImage(url: URL(string: subModel.strMealThumb)){
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)

            }placeholder: {
                Color.blue.opacity(0.1)
            }
            .frame(width: 350, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(subModel.strMeal)
                .foregroundColor(.white)
                .font(.bold(Font.custom("pacifico", size: 20))())
                .padding(.leading,10)
        }.background(RoundedRectangle(cornerRadius:8)
            .stroke(lineWidth: 2))
        
        
    }
}

struct SubCategoryListView: View {
    
    let subModels: [SubCategoryModel]
    //Display every item in the json file
    var body: some View {
        LazyVStack(spacing: 20){
            ForEach(subModels) { subModel in
                SubCategoryView(subModel: subModel)
            }
        }
    }
}

struct SubCategoryListView_Previews: PreviewProvider{
    static var previews: some View{
        SubCategoryDashboardView(viewModel: .init(selectedCategoryName: nil))
    }
    
}
