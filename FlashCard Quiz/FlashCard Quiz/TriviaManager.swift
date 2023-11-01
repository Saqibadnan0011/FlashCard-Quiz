//
//  FlashManager.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import Foundation

class FlashManager: ObservableObject {
    private (set) var flash: [Flash.Result] = []
    @Published private (set) var length = 0
    
    @Published private (set) var index = 0
    @Published private (set) var reachedEnd = false
    @Published private (set) var answerSelected = false
    @Published private (set) var Question: AttributedString = ""
    @Published private (set) var answerChoices: [Answer] = []
    @Published private (set) var progress: CGFloat = 0.00
    
    init() {
        Task.init {
            await fetchFlash()
        }
    }
    
    func fetchFlash() async {
        guard let url = URL(string: "https://opentdb.com/api.php?amount=10&category=18") else { fatalError("URL Missing")}
        
        let urlRequest = URLRequest(url: url)
        do {
            let ( data, response ) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error while fetching")}
            
            let decoder = JSONDecoder()
            //decoder.dateDecodingStrategy = .convertToSnakeCase
            let decodedData = try decoder.decode(Flash.self, from: data)
            
            DispatchQueue.main.async {
                self.flash = decodedData.result
                self.length = self.flash.count
                self.setQuestion()
            }
        } catch {
            print("Error fetching: \(error)")
        }
    }
    func goToNextQuestion() {
        if index + 1 < length {
            index += 1
            setQuestion()
        } else {
            reachedEnd = true
        }
    }
    func setQuestion() {
        answerSelected = false
        progress = CGFloat(Double(index + 1) / Double(length) * 350)
        if index < length {
            let currentTriviaQuestion = trivia [index]
            question = currentTriviaQuestion.formattedQuestion
            answerChoices = currentTriviaQuestion.answer
        }
    }
}
