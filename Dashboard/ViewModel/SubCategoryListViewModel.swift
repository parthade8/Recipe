//
//  SubCategoryListViewModel.swift
//  Recipe
//
//  Created by De, Partha on 21/02/23.
//

import SwiftUI

class SubCategoryListViewModel: ObservableObject {
    @Published var subModels: [SubCategoryModel] = []
    init( selectedCategoryName: String? ){
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?c=\(selectedCategoryName ?? "Beef")") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url))  {data, response, error in
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode,(200...299).contains(statusCode) else{
                return
            }
            guard error == nil else{ return }
            do
            {
                guard let data else { return }
                let responseData = try JSONDecoder().decode(SubCategoryResponse.self, from: data)
                DispatchQueue.main.async {
                    self.subModels = responseData.meals
                }
            }
            catch{
                print("Unable to decode: \(error)")
            }
        }
        task.resume()
    }
}

