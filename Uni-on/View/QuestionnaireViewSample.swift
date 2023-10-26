//
//  QuestionnaireViewSample.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

import SwiftUI

struct QuestionnaireViewSample: View {
    
    @ObservedObject var viewModel: QuestionnaireViewModel
    @State private var selectedAnswerIndex: Int = 0
    
    var body: some View {
            VStack {
                if let currentQuestion = viewModel.currentQuestion {
                    Text("Question \(currentQuestion.questionNumber)/7")
                        .font(.title)
                    Text(currentQuestion.questionSituation)
                        .font(.headline)
                    Text(currentQuestion.questionText)
                    
                    ForEach(0..<currentQuestion.questionAnswers.count, id: \.self) { index in
                        HStack {
                            Text(currentQuestion.questionAnswers[index])
                                .onTapGesture {
                                    selectedAnswerIndex = index
                                }
                            RadioButton(checked: Binding(
                                get: { selectedAnswerIndex == index },
                                set: { newValue in
                                    if newValue {
                                        selectedAnswerIndex = index
                                    }
                                }
                            ))
                        
                        }
                    }
                }
            }
    }
}
                    
                    //            Text(questions.questionSituation)
                    //            Text(.questionText)
                    //            Image(onboardingQuestionnaire.surveyImageName)
                    //            HStack {
                    //                RadioButton(checked: Binding(
                    //                    get: { selectedAnswerIndex == index },
                    //                    set: { newValue in
                    //                        if newValue {
                    //                            selectedAnswerIndex = index
                    //                        }
                    //                    }
                    //                ))
                    //                Text(onboardingQuestionnaire.questionAnswers[0])
                    //                    .onTapGesture {
                    //                        selectedAnswerIndex = index
                    //                    }
                    //            }
                    //        }
                    //
                    //            }
                    //            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                    //        }



struct QuestionnaireViewSample_Previews: PreviewProvider {
    static var previews: some View {
        // Create a mock QuestionnaireViewModel with sample questions
        let sampleQuestions: [OnboardingQuestionnaire] = [
            // Define your sample questions here
            // Example: OnboardingQuestionnaire(questionNumber: 1, questionSituation: "Sample Situation", ...)
            OnboardingQuestionnaire(questionNumber: 1, questionSituation: "FirstSituation", questionText: "FirstQuestion", surveyImageName: "survey1", questionAnswers: ["Answer1","Answer2","Answer3","Answer4"], questionAnswersPoints: [1,2,3,4]),
            OnboardingQuestionnaire(questionNumber: 1, questionSituation: "SecondSituation", questionText: "SecondQuestion", surveyImageName: "survey1", questionAnswers: ["Answer1","Answer2","Answer3","Answer4"], questionAnswersPoints: [1,2,3,4]),
            OnboardingQuestionnaire(questionNumber: 1, questionSituation: "ThirdSituation", questionText: "ThirdQuestion", surveyImageName: "survey1", questionAnswers: ["Answer1","Answer2","Answer3","Answer4"], questionAnswersPoints: [1,2,3,4])


        ]
        
        let sampleViewModel = QuestionnaireViewModel(questions: sampleQuestions)
        
        return QuestionnaireViewSample(viewModel: sampleViewModel)
    }
}

                    
                    
                    
