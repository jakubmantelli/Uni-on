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
    @Binding var checked: Bool

    var body: some View {
        ZStack {
            Image(systemName: "circle")
                .foregroundColor(.gray)
                .onTapGesture {
                    self.checked.toggle()
                }
            if checked {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(ColorPallete.primary)
            }
        }
    }
}

struct AnswerBackground: View {
    @Binding var checked: Bool

    var body: some View {
        ZStack {
            Color(.white)
                //.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                .frame(maxHeight: 75, alignment: .center)
                .onTapGesture {
                    self.checked.toggle()
                }
            if checked {
                RoundedRectangle(cornerRadius: 10)
                    .fill(ColorPallete.primaryLight)
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                    .frame(maxHeight: 60, alignment: .center)

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
    
    func goToZero() {
        currentQuestionIndex = 0
        
    }

}


