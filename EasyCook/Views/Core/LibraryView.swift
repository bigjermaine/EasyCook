//
//  LibraryView.swift
//  EasyCook
//
//  Created by Apple on 18/05/2023.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var  Dessertcore = Dessertcoredataviewmodel()
    var body: some View {
        NavigationView {
            List{
                ForEach(Dessertcore.savedEntity)  { dessert in
                    VStack(spacing:10){
                        HStack{
                            Text("Name")
                            Spacer()
                            Text(dessert.name ?? "")
                        }
                        
                    }
                }
                .onDelete(perform: Dessertcore.delete)
                .listStyle(.plain)
            }
           
        }
        .navigationBarTitle("Favorites")
        .onAppear{
            Dessertcore.fetchbooking()
             }
    }
      
              
}
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
