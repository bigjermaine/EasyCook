//
//  ContentView.swift
//  EasyCook
//
//  Created by Apple on 15/05/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isonBoardingViewActive:Bool = true
    var body: some View {
        ZStack {
            if isonBoardingViewActive {
                WelcomeScreen()
            }else{
                TabBar()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
