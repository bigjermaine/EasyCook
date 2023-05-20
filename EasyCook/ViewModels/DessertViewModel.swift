//
//  DessertViewModel.swift
//  EasyCook
//
//  Created by Apple on 20/05/2023.
//

import Foundation
import Combine



class DessertViewModel:ObservableObject {
    private var canc: AnyCancellable!
    @Published var searchtext: String = ""
    @Published var meals:[Meal] = []
    
    @Published var mealsDetails:[MealDetail] = []
    private var  cancellables =  Set<AnyCancellable>()
    init() {
    
     fetch()
    
    }
    
    ///Fetching data from the apicaller injecting it in the viewmodel
    private func fetch() {
        
        APICaller.shared.getDesserts { result in
            DispatchQueue.main.async { [weak self] in
                switch result {
                    
                case .success(let data):
                    self?.meals = data.sorted { meal1, meal2 in
                        return meal1.strMeal  < meal2.strMeal
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
     public  func fetchDetails(id:String) {
        APICaller.shared.getallDesserts(id:id) { result in
            DispatchQueue.main.async { [weak self] in
                switch result {
                    
                case .success(let data):
                    self?.mealsDetails = data
                    print(data)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
}
