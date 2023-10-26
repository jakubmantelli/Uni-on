//
//  QuestionnaireView.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

import SwiftUI

struct QuestionnaireView: View {
    @ObservedObject var viewModel: QuestionnaireViewModel
    @State private var selectedAnswerIndex: Int = -1

    var body: some View {
        NavigationView {
            Group { // Group to define the scope for .navigationBarTitle
                VStack {
                    if let currentQuestion = viewModel.currentQuestion {
                        
                        Text(currentQuestion.questionSituation)
                            .font(.title3)
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding(.init(top: 30, leading: 40, bottom: 10, trailing: 40))
                            .lineLimit(nil)

        
                        Text(currentQuestion.questionText)
                        
                        Image(currentQuestion.surveyImageName)
                            .resizable()
                            .scaledToFit()
                       
                        ForEach(0..<currentQuestion.questionAnswers.count, id: \.self) { index in
//                            Button(action: {
//                                viewModel.userSelectedAnswer(at: index)
//                                if viewModel.hasNextQuestion() {
//                                    viewModel.moveToNextQuestion()
//                                    selectedAnswerIndex = -1 // Reset the selection to none
//                                } else {
//                                    // User has answered all questions, navigate to the result/loading screen
//                                    print("User Score: \(viewModel.calculateUserScore())")
//                                }
//                            }) {
                                HStack {
                                    Text(currentQuestion.questionAnswers[index])
                                        .multilineTextAlignment(.leading)
                                        .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 0))
                                        //.frame(maxWidth: .infinity, alignment: .leading)

                                    RadioButton(checked: Binding(
                                        get: { selectedAnswerIndex == index },
                                        set: { newValue in
                                            if newValue {
                                                selectedAnswerIndex = index
                                            }
                                        }
                                    ))
                                    .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 20))
                                    .frame(maxWidth: .infinity, alignment: .trailing)

                                }
                                .padding(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                           // }
                        }
                    }
                }
            }
            .navigationBarTitle("Question \(viewModel.currentQuestion?.questionNumber ?? 0)/7", displayMode: .inline)
        }
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
