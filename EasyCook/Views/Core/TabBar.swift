//
//  TabBar.swift
//  EasyCook
//
//  Created by Apple on 19/05/2023.
//

import SwiftUI

struct TabBar: View {
    @StateObject var dessertviewmodel = DessertViewModel()
    @StateObject var  Dessertcore = Dessertcoredataviewmodel()
    var body: some View {
        TabView{
           BrowseView()
                .environmentObject(dessertviewmodel)
                .environmentObject(Dessertcore)
                .tabItem {
                    Image(systemName: "house")
                    Text("Browse")
                }
            FavouritesView()
                .environmentObject(Dessertcore)
               .tabItem {
                   Image(systemName: "books.vertical.fill")
                   Text("Favourites")
               }
           ProfileView()
             .tabItem {
                 Image(systemName: "gear")
                 Text("Settings")
             }
            
        }
        .accentColor(.purple)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
