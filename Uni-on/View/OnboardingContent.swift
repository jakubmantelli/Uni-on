//
//  OnboardingContent.swift
//  Uni-on
//
//  Created by Mikayla Kim on 22/10/23.
//

import SwiftUI

struct OnboardingContent: View {
    
    @State private var pageIndex = 0
    @State private var shouldNavigateToQuestionnaire = false
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIControl.appearance()
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                ColorPallete.primaryLight
                    .ignoresSafeArea()
                
                TabView(selection: $pageIndex) {
                    
                    ForEach(pages) { page in
                        VStack {
                            Spacer()
                            PageView(page: page)
                            Spacer(minLength: 0)
                            if page == pages.last {
                                
                                Button("Dive in", action: {
                                    shouldNavigateToQuestionnaire = true // Set the state variable to trigger navigation
                                })
                                .padding()
                                .font(.body)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 12).foregroundColor(.black))
                                .padding()

                                NavigationLink(
                                    destination: QuestionnaireView(viewModel: QuestionnaireViewModel(questions: onboardingQuestions)),
                                    isActive: $shouldNavigateToQuestionnaire
                                ) {
                                    EmptyView()
                                }


                                Spacer()
                                
                                Text("Skip for now")
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                    .underline()
                                Spacer(minLength: 20)
                            }
                        
                            
                            Spacer(minLength: 80)
                            
                        }
                        .tag(page.tag)
                    }
                    
                    
                }
                
                
            }.navigationBarBackButtonHidden(true)
            
            .animation(.easeInOut, value: pageIndex)
            .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
    func incrementPage() {
        pageIndex += 1
        
        
    }
    func goToZero() {
        pageIndex = 0
        
    }
    
    
    
}





#Preview {
    OnboardingContent()
}


