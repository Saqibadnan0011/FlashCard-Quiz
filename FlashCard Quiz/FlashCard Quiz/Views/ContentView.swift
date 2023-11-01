//
//  ContentView.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 40) {
            VStack(spacing: 20) {
                Text("FlashCard Quiz")
                    .lilacTitle()
                Text("Are you ready to test out your knowledge?")
                    .foregroundColor(Color("AccentColor").opacity(0.6))
            }
            LetGoButton(text: "Let's Go")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        .background(Gradient(colors: [.purple, .pink]))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
