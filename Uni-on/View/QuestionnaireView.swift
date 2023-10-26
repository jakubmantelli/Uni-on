//
//  QuestionnaireView.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

import SwiftUI

struct QuestionnaireView: View {
    @ObservedObject var viewModel: QuestionnaireViewModel
    
    var body: some View {
        VStack {
            if let currentQuestion = viewModel.currentQuestion {
                Text("Question \(currentQuestion.questionNumber)/7")
                    .font(.headline)
                    //.lineLimit(nil)
                
                Text(currentQuestion.questionSituation)
                    .font(.title3)
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding(.init(top: 0, leading: 40, bottom: 0, trailing: 40))
                Text(currentQuestion.questionText)
                
                
                
                ForEach(0..<currentQuestion.questionAnswers.count, id: \.self) { index in
                    Button(action: {
                        viewModel.userSelectedAnswer(at: index)
                        if viewModel.hasNextQuestion() {
                            viewModel.moveToNextQuestion()
                        } else {
                            // User has answered all questions, navigate to result loading screen
                            print("User Score: \(viewModel.calculateUserScore())")
                        }
                    }) {
                        Text(currentQuestion.questionAnswers[index])
                    }
                }
            }
        }
        .padding()
    }
}




// Create a preview-specific view model for testing purposes
class QuestionnaireViewModelPreview: QuestionnaireViewModel {
    override init(questions: [OnboardingQuestionnaire]) {
        super.init(questions: questions)
        // Initialize with some test data if needed
    }
}

struct QuestionnaireView_Previews: PreviewProvider {
    static var previews: some View {
        let previewViewModel = QuestionnaireViewModelPreview(questions: onboardingQuestions)
        return QuestionnaireView(viewModel: previewViewModel)
    }
}
