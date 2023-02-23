//
//  CategoryModel.swift
//  Recipe
//
//  Created by De, Partha on 20/02/23.
//

import Foundation
struct CategoryModel: Decodable,Identifiable{
    var id: String{idCategory}
    var idCategory: String
    var strCategory: String
    var strCategoryThumb: String
    var strCategoryDescription: String
}
struct CategoryResponse: Decodable{
    var categories: [CategoryModel]
}
