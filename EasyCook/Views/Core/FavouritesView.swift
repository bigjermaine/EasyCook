//
//  LibraryView.swift
//  EasyCook
//
//  Created by Apple on 18/05/2023.
//

import SwiftUI

struct FavouritesView: View {
    @EnvironmentObject var  dessertcore:Dessertcoredataviewmodel
    var body: some View {
        NavigationView {
            List{
                ForEach(dessertcore.savedEntity)  { dessert in
                    VStack(spacing:10){
                    HStack{
                    Text("Name💎")
                    Spacer()
                    Text(dessert.name ?? "")
                    }
                        
                    }
                }
                .onDelete(perform: dessertcore.delete)
                .listStyle(.plain)
            }
           
        }
        .navigationBarTitle("Favorites")
        .onAppear{
            dessertcore.fetchbooking()
             }
    }
      
              
}
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView().environmentObject(Dessertcoredataviewmodel())
    }
}
