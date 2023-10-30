//
//  QuestionnaireViewModel.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

import Foundation
import Combine
import SwiftUI

class QuestionnaireViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var userAnswers: [Int] = []
    @Published var assignedPersona: Persona?
    @Published var shouldNavigateToResultLoading = false


    let questions: [OnboardingQuestionnaire]
    
    init(questions: [OnboardingQuestionnaire]) {
        self.questions = questions
    }
    
    var currentQuestion: OnboardingQuestionnaire? {
        guard currentQuestionIndex < questions.count else { return nil }
        return questions[currentQuestionIndex]
    }
    
    func hasNextQuestion() -> Bool {
        return currentQuestionIndex + 1 < questions.count
    }
    
    func moveToNextQuestion() {
        if hasNextQuestion() {
            currentQuestionIndex += 1
        }
    }
    
    func assignPersona() {
        let totalScore = calculateUserScore()
        assignedPersona = OnboardingQuestionnaire.persona(forScore: totalScore)
    }

    func moveToResultLoading() {
        shouldNavigateToResultLoading = true
    }

    func userSelectedAnswer(at index: Int) {
        userAnswers.append(currentQuestion?.questionAnswersPoints[index] ?? 0)
    }
    
    func calculateUserScore() -> Int {
        return userAnswers.reduce(0, +)
    }
    
    func goToZero() {
        currentQuestionIndex = 0
        
    }

}
