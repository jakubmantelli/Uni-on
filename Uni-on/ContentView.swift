
//
//  ContentView.swift
//  neverhaveiever
//
//  Created by Jakub Mantelli on 18/10/23.
//
import SwiftUI

struct ContentView: View {
    
    
    //State is used so any changes to this variable (currentQuestionIndex) will automatically trigger updates in the view, so the UI stays in sync everytime.
    
    // set the current Array to 0
    @State private var currentQuestionIndex = 0
    //stating a var to initialize an alert
    @State private var isAlertPresented = false
    
    
    //number of max questions
    var maxQuestions = 5
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Spacer(minLength: 100)
                
                
                //Category Title or Navigation
                Text(questions[currentQuestionIndex].category)
                    .font(.title)
                    .bold()
                
                
                
                //Keep track of the question number
                Text("Question \(currentQuestionIndex + 1) of \(questions.count)")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .padding()
                
                
                
                
                //create a rounder rectangle, to put text inside use .overlay and adjust with .padding and .frame and .multilinetextalignment
                
                //Question
                RoundedRectangle(cornerRadius: 21)
                
                
                    .foregroundColor(.black)
                    .frame(width: 335, height: 335)
                    .overlay(Text(questions[currentQuestionIndex].text).multilineTextAlignment(.center).padding())
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                
                
                
                Spacer(minLength: 10)
                
                if currentQuestionIndex == maxQuestions - 1 {
                    Button("End Game") {
                        isAlertPresented.toggle()
                    } .padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.red))
                } else {
                    Button("Next Prompt") {
                        currentQuestionIndex = (currentQuestionIndex + 1) % questions.count
                    }.padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.black))
                }
                
                
                
            }
            .preferredColorScheme(.light) //force light mode
            
            
            //category as navigation title
            // .navigationTitle(questions[currentQuestionIndex].category)
            
            
            
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
                    title: Text("Confirm Quit"),
                    message: Text("Are you sure you want to quit?"),
                    primaryButton: .destructive(Text("Quit")) {
                        // quit action here
                        exit(0)
                    },
                    secondaryButton: .cancel()
                )
                
                
                
                
            }
            
            
            Spacer(minLength: 200) //everything goes to the top
        }
        
    }
    
}



#Preview {
    ContentView()
}


