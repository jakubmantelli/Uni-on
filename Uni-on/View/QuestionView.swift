//
//  QuestionView.swift
//  Uni-on
//
//  Created by Mohammad Solki on 29/10/23.
//

import SwiftUI

struct QuestionView: View {
    @ObservedObject var viewModel: QuestionnaireViewModel
    let questionIndex: Int
    @State private var shouldNavigateToResultLoading = false
    
    var body: some View {
        Group {
            VStack {
                Text("Question \(questionIndex + 1)")
                    .font(.title)
                    .padding()
                Text(viewModel.questions[questionIndex].questionSituation)
                    .font(.headline)
                    .padding()
                Text(viewModel.questions[questionIndex].questionText)
                    .padding()
                
                ForEach(0..<viewModel.questions[questionIndex].questionAnswers.count, id: \.self) { answerIndex in
                    AnswerOptionView(
                        optionText: viewModel.questions[questionIndex].questionAnswers[answerIndex],
                        isSelected: .constant(false),
                        action: {
                            viewModel.userSelectedAnswer(at: answerIndex)
                            if viewModel.hasNextQuestion() {
                                viewModel.moveToNextQuestion()
                            }
                            else {
                                viewModel.assignPersona()
                                print("User Score: \(viewModel.calculateUserScore())")
                                print("Assigned Persona: \(String(describing: viewModel.assignedPersona))")
                                viewModel.moveToResultLoading()

                            }
                        }
                    )
                }
                
                Spacer()

                // Bottom of the Screen Next Button:
                //
                //            Button(action: {
                //                if viewModel.hasNextQuestion() {
                //                    viewModel.moveToNextQuestion()
                //                }
                //            }) {
                //                Text("Next")
                //                    .padding()
                //                    .background(Color.blue)
                //                    .foregroundColor(.white)
                //                    .cornerRadius(10)
                //            }
                //            .padding()
            }
    //        NavigationLink(destination: ResultLoading(), isActive: $showingResultLoading) {
    //            EmptyView()
    //        }
            
            .padding()
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = QuestionnaireViewModel(questions: onboardingQuestions) // Replace this with your actual view model instance
        let questionIndex = 0 // Replace this with the desired question index
        
        return QuestionView(viewModel: viewModel, questionIndex: questionIndex)
    }
}
