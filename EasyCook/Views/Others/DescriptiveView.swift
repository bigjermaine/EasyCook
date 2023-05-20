//
//  DescriptiveView.swift
//  EasyCook
//
//  Created by Apple on 20/05/2023.
//

import SwiftUI

struct DescriptiveView: View {
    var mealdetails:String?
    @StateObject var dessertviewmodel = DessertViewModel()
    var body: some View {
        NavigationView{
         
                ForEach(dessertviewmodel.mealsDetails ,id:\.self) { meal in
                    DescriptiveShowView(mealdetails: meal)
                        .frame(maxWidth:.infinity,maxHeight: .infinity)
                }
            
           }
        
        .onAppear{
            dessertviewmodel.fetchDetails(id:mealdetails ?? "")
        }
    }
     }
     
 

struct DescriptiveView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptiveView()
    }
}
