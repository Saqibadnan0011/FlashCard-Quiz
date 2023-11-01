//
//  Answers.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
