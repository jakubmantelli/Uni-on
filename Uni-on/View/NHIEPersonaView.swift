//
//  NHIEPersonaView.swift
//  Uni-on
//
//  Created by Mohammad Solki on 01/11/23.
//

import SwiftUI

struct NHIEPersonaView: View {
    var selectedCategories: Set<String>
    @State private var isAlertPresented = false
    @State private var isActiveHomeView = false
    @State private var shuffledQuestions: [String] = []
    @State private var currentQuestionIndex: Int = 0
    @State private var isGameEnded = false
    @State private var showHome = false
    
    var maxQuestionsToShow = 7  // Maximum number of questions to display
    
    var showEndGameButton: Bool {
        return currentQuestionIndex == shuffledQuestions.count - 1
    }
    
    var body: some View {
        
        NavigationView {
            
            
     
            ZStack {
                Color(ColorPallete.primaryLight)
                    .ignoresSafeArea()
                VStack {
                    

                    
                    if shuffledQuestions.isEmpty {
                        Text("No questions available.")
                            .font(.title)
                    } else {
                        Text("Bonus Prompt 🎉\nfor Wise Night Owls")
                            .font(.title)
                            .bold()
                            .padding(.top)
                            .foregroundColor(.black)
                        
                        
                        
                        Text("7 of 7")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding()
                        
                        RoundedRectangle(cornerRadius: 21)
                            .foregroundColor(ColorPallete.primary)
                            .frame(width: 335, height: 335)
                            .overlay(
                                Text("Never have I ever struck up a friendly conversation with a stranger to learn more about their culture and traditions.")
                                
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding())
                            .padding(.bottom, 30)
                    }
                    
                    
                 
                        if showEndGameButton {
                            
                
                            Button("End Game"){
                                isGameEnded = true
                                showHome = true
                            }
                           
                        } else {
                            Button("End Game"){
                            
                                if currentQuestionIndex < shuffledQuestions.count - 1 {
                                    currentQuestionIndex += 1
                                }
                            }
                        }
                    
                  
                    
                } //vstack end
            
               
                //clickable quit button
                        .toolbar {
                            ToolbarItem(placement: .topBarTrailing) {
                                Button("X") {
                                    // Show the alert when the button is pressed
                                    isAlertPresented.toggle()
                                    
                                }
                                .padding()
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            }
                        }
           

                        //function alert
                        .alert(isPresented: $isAlertPresented) {
                            Alert(
                                title: Text("Confirm"),
                                message: Text("Go back to Homepage?"),
                                primaryButton: .destructive(Text("Homepage")) {
                                showHome = true
                                      
                                },
                                
                                secondaryButton: .cancel()
                            )
                        }
                
                
             
                
                
                .buttonStyle(.bordered)

                .padding(.bottom, 100)
               
                .bold()
                .foregroundColor(ColorPallete.primaryDark)
                
                
           
                
            .navigationBarItems(trailing: NavigationLink("", destination: HomeView(), isActive: $showHome))
            }
            
            
        }
        .navigationBarBackButtonHidden(true)
        
        
            .onAppear {
                shuffledQuestions = shuffleAndSelectQuestions()
            }
    }
    
    
    
    //FUNCTIONS BELOW
    
    
    
    
    
    
    
    
    
    // Function to shuffle and select random questions
    func shuffleAndSelectQuestions() -> [String] {
        let filteredCategories = allCategories.filter { selectedCategories.contains($0.name) }
        var allQuestions = filteredCategories.flatMap { $0.question }
        allQuestions.shuffle()
        return Array(allQuestions.prefix(maxQuestionsToShow))
    }
    
    // Function to find the category for a given question
    func categoryForQuestion(_ question: String) -> String {
        for category in allCategories {
            if category.question.contains(question) {
                return category.name
            }
        }
        return ""
    }
}

#Preview {
    NHIEPersonaView(selectedCategories: Set(["Hobbies & Interests", "Movies & TV Shows"]))
}
