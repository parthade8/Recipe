//
//  CategoryListViewModel.swift
//  Recipe
//
//  Created by De, Partha on 21/02/23.
//

import SwiftUI

class CategoryListViewModel: ObservableObject{
    @Published
    var models: [CategoryModel] = []
    @Published
    var isLoading: Bool = false
    init(){
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url )) { data, response, error in
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, (200...299).contains(statusCode) else{
                return
            }
            guard error == nil else{
                return
            }
            do{
                guard let data else {return}
                let responseData = try JSONDecoder().decode(CategoryResponse.self, from: data)
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.models = responseData.categories
                }
            }catch{
                print("Unable to decode: \(error)")
            }
            
        }
        task.resume()
    }
}


