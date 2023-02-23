//
//  SubCategoryModel.swift
//  Recipe
//
//  Created by De, Partha on 21/02/23.
//

import Foundation
struct SubCategoryModel: Decodable, Identifiable{
    var id: String{idMeal}
    var strMeal: String
    var strMealThumb: String
    var idMeal: String
}

struct SubCategoryResponse: Decodable{
    var meals: [SubCategoryModel]
}
