//
//  QuestionnaireView.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

//import SwiftUI
//
//struct QuestionnaireView: View {
//    @ObservedObject var viewModel: QuestionnaireViewModel
//    @State private var selectedAnswerIndex: Int = -1
//    @State private var pageIndex = 0
//    private let dotAppearance = UIControl.appearance()
//    @State private var currentPage = 0
//    @State private var isLastPage = false
//
//
//
//    var body: some View {
//        // NavigationView {
//        //PageView(page: viewModel ) {
//        TabView {
//            Group { // Group to define the scope for .navigationBarTitle
//                VStack {
//                    if let currentQuestion = viewModel.currentQuestion {
//
//                        Text(currentQuestion.questionSituation)
//                            .font(.title3)
//                            .fontWeight(.bold)
//                            .fixedSize(horizontal: false, vertical: true)
//                            .multilineTextAlignment(.center)
//                            .padding(.init(top: 30, leading: 40, bottom: 10, trailing: 40))
//                            .lineLimit(nil)
//
//
//                        Text(currentQuestion.questionText)
//
//                        Image(currentQuestion.surveyImageName)
//                            .resizable()
//                            .scaledToFit()
//
//                        ForEach(0..<currentQuestion.questionAnswers.count, id: \.self) { index in
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
//                                ZStack {
//                                    AnswerBackground(checked: Binding(
//                                        get: {
//                                            selectedAnswerIndex == index
//                                        },
//                                        set: { newValue in
//                                            if newValue {
//                                                selectedAnswerIndex = index
//                                            }
//                                        }
//                                    ))
//                                    //.padding(10)
//                                    //.frame(alignment: .trailing)
//
//                                    HStack {
//                                        Text(currentQuestion.questionAnswers[index])
//                                            .multilineTextAlignment(.leading)
//                                        //.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
//                                            .frame(maxWidth: .infinity, alignment: .leading)
//
//                                        RadioButton(checked: Binding(
//                                            get: { selectedAnswerIndex == index },
//                                            set: { newValue in
//                                                if newValue {
//                                                    selectedAnswerIndex = index
//                                                }
//                                            }
//                                        ))
//                                        //.padding(.init(top: 0, leading: 0, bottom: 0, trailing: 10))
//                                        //.frame(alignment: .trailing)
//
//                                    }
//                                    .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
//                                }
//                                // }
//                            }
//                        }
//                    }}
//                .safeAreaPadding(0)
//            }
//            //.navigationBarTitle("Question \(viewModel.currentQuestion?.questionNumber ?? 0)/7", displayMode: .inline)
//
//            //                    }
//            //                .navigationBarTitle("Page View")
//            //            .navigationBarItems(trailing: NavigationLink("", destination: ResultLoading(), isActive: $isLastPage))
//        }
//        .tabViewStyle(.page(indexDisplayMode: .always))
//
//
//        //            .indexViewStyle(.page(backgroundDisplayMode: .always))
//    }
//
//}
////     }
//
import SwiftUI

struct QuestionnaireView: View {
    @ObservedObject var viewModel: QuestionnaireViewModel
    @State private var selectedTabIndex = 0 // New state variable for manual page selection

    var body: some View {
        NavigationView {
            ZStack {
                Color(.gray.opacity(0.25))
                    .ignoresSafeArea()
                VStack {
                    TabView(selection: $viewModel.currentQuestionIndex) {
                        ForEach(0..<viewModel.questions.count, id: \.self) { index in
                            QuestionView(viewModel: viewModel, questionIndex: index)
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
                
                //Spacer()
                // Custom page indicator view
                //            PageIndicator(currentPage: $viewModel.currentQuestionIndex, totalPages: viewModel.questions.count)
            }
        //Spacer()
            .navigationBarItems(trailing: NavigationLink("", destination: ResultLoading(), isActive: $viewModel.shouldNavigateToResultLoading))

            
        }     
        .navigationBarBackButtonHidden(true)


        
        
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
