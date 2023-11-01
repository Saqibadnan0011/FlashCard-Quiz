//
//  QuestionView.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack (spacing: 40) {
            HStack {
                Text("BrainStorming")
                    .lilacTitle()
                Spacer()
                
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: 40)
            
            VStack (alignment: .leading, spacing: 20) {
                Text("Which of the follwing countries is within Eurozone but outside of the Schengen Area?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
