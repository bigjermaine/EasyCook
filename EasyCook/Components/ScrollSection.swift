//
//  ScrollSection.swift
//  EasyCook
//
//  Created by Apple on 20/05/2023.
//

import SwiftUI

struct ScrollSection: View {
    var meal:Meal
    var body: some View {
        VStack(alignment: .center, spacing:15) {
            Text(meal.strMeal )
                .font(.system(size: 10))
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width:100)
            ///Used  async images
            HStack{
                if let url = meal.strMealThumb {
                    AsyncImage(url: URL(string: url)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:100,height:130)
                            .cornerRadius(25)
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection(meal: Meal(strMeal: "ee", strMealThumb: "ee", idMeal: "eee"))
    }
}
