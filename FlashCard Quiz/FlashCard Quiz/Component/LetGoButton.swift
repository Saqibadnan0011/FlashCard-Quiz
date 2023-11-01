//
//  LetGoButton.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import SwiftUI

struct LetGoButton: View {
    let text: String
    let background: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(10)
            .shadow(color: Color(.systemPink),radius: 5)
            //.shadow(radius: 10)
    }
}

struct LetGoButton_Previews: PreviewProvider {
    static var previews: some View {
        LetGoButton(text: "Next")
    }
}
