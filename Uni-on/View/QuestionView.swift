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
                Text("Question \(questionIndex + 1)/7")
                    .font(.headline)
                    .padding(.horizontal)
                
                Text(viewModel.questions[questionIndex].questionSituation)
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.init(top: 5, leading: 0, bottom: 3, trailing: 0))
                
                Text(viewModel.questions[questionIndex].questionText)
                    .padding(.horizontal)
                
                Image(viewModel.questions[questionIndex].surveyImageName)
                    .resizable()
                    .scaledToFit()
                    //.scaleEffect(CGSize(width: 0.8, height: 0.8))
                    .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                    .frame(width: 220, height: 220)
                
                
                
                ForEach(0..<viewModel.questions[questionIndex].questionAnswers.count, id: \.self) { answerIndex in
                    Spacer(minLength: 0)
                    AnswerOptionView(
                        optionText: viewModel.questions[questionIndex].questionAnswers[answerIndex],
                        isSelected: .constant(false),
                        action: {
                            viewModel.userSelectedAnswer(at: answerIndex)
                            if viewModel.hasNextQuestion() {
                                withAnimation {
                                    viewModel.moveToNextQuestion()
                                }
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
                
                //Spacer(minLength: 30)

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
           Spacer(minLength: 60)
            }
            //Spacer(minLength: 5)
    //        NavigationLink(destination: ResultLoading(), isActive: $showingResultLoading) {
    //            EmptyView()
    //        }            

            
            .padding(.horizontal)
        }
    }
}



//struct QuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        let viewModel = QuestionnaireViewModel(questions: onboardingQuestions) // Replace this with your actual view model instance
//        let questionIndex = 1 // Replace this with the desired question index
//        
//        return QuestionView(viewModel: viewModel, questionIndex: questionIndex)
//    }
//}

#Preview {
    QuestionView(viewModel: QuestionnaireViewModel(questions: onboardingQuestions), questionIndex: 2)
}
