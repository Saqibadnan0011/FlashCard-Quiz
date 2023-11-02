//
//  FlashView.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import SwiftUI

struct FlashView: View {
    
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("FlashCard Quiz")
                    .lilacTitle()
                Text("Congratulation! You completed your Task-1🥳")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    LetGoButton(text: "Play Again")
                }

            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct FlashView_Previews: PreviewProvider {
    static var previews: some View {
        FlashView()
            .environmentObject(TriviaManager())
    }
}
