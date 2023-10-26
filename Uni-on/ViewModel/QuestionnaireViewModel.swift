//
//  QuestionnaireViewModel.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

import Foundation
import Combine
import SwiftUI

struct RadioButton: View {
    @Binding var checked: Bool    //the variable that determines if its checked
    
    var body: some View {
        Group{
            if checked {
                ZStack{
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 8, height: 8)
                }.onTapGesture {self.checked = false}
            } else {
                Circle()
                    .fill(Color.white)
                    .frame(width: 20, height: 20)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .onTapGesture {self.checked = true}
            }
        }
    }
}


class QuestionnaireViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var userAnswers: [Int] = []
    
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
    
    func userSelectedAnswer(at index: Int) {
        userAnswers.append(currentQuestion?.questionAnswersPoints[index] ?? 0)
    }
    
    func calculateUserScore() -> Int {
        return userAnswers.reduce(0, +)
    }
}


