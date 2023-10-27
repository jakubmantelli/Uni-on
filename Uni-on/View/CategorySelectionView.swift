//
    //  CategorySelectionView.swift
    //  Uni-on
    //
    //  Created by Jakub Mantelli on 20/10/23.
    //

import SwiftUI

struct CategorySelectionView: View {
    @State private var selectedCategories: Set<String> = Set()
    @State private var showErrorMessage = false
    @State private var isNavigationActive = false
    @State private var shuffledQuestions: [Category] = []
    @State private var isShuffling = false // Track whether shuffle is active

    var body: some View {
        NavigationView {
            
            VStack {
                
                Spacer(minLength: 10)
                Text("Never have i ever")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(ColorPallete.primaryDark)
                
                
                Spacer(minLength: 10)
                Text("Select 2 or more categories,")
                    .font(.title2)
                    .bold()
                  
                

                Text("or Shuffle for random categories!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .bold()
                    
                
                VStack {
                    List {
                        ForEach(allCategories, id: \.name) { category in
                            HStack {
                                Text(category.name)
                                    .padding(10)
                                
                                
                                
                                Spacer()
                                Image(systemName: selectedCategories.contains(category.name) ? "checkmark.square.fill" : "square")
                                    .foregroundColor(ColorPallete.primaryDark)
                                    .bold()
                                    .onTapGesture {
                                        toggleCategorySelection(category.name)
                                    }
                                   
                            }
                        }
                    }
                  
                } .padding(-5)
                
            

                NavigationLink("", destination: NhieView(selectedCategories: isShuffling ? shuffledCategories() : selectedCategories), isActive: $isNavigationActive)
                     // Hidden link

              

                Button("Play!", action: {
                    if isShuffling || selectedCategories.count >= 2 {
                        isNavigationActive = true
                    } else {
                        showErrorMessage = true // Show error message
                    }
                })
                .bold()
              
                .buttonStyle(.bordered)
                 
                Spacer(minLength: 30)
                
                Button("Shuffle!", action: {
                    shuffleCategories()
                    isNavigationActive = true // Navigate to NhieView
                })
                
                .foregroundColor(ColorPallete.primaryDark)
              

                Spacer(minLength: 20)

                .alert(isPresented: $showErrorMessage) {
                    Alert(
                        title: Text("Selection Error"),
                        message: Text("Please select at least two categories or shuffle."),
                        dismissButton: .default(Text("OK"))
                    )
                }
                
            } .scrollContentBackground(.hidden)
                .background(ColorPallete.primaryLight)
               
        }
        
        .navigationBarBackButtonHidden(true)
    }

    private func toggleCategorySelection(_ category: String) {
        if selectedCategories.contains(category) {
            selectedCategories.remove(category)
        } else {
            selectedCategories.insert(category)
        }
    }

    private func shuffleCategories() {
        shuffledQuestions = allCategories.shuffled()
        isShuffling = true
    }

    private func shuffledCategories() -> Set<String> {
        return Set(shuffledQuestions.prefix(2).map { $0.name })
    }
}

struct CategorySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectionView()
    }
}
