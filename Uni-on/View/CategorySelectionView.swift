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
    @State private var selectall = true
    // To control navigation
    
    var body: some View {
        NavigationView {
            
            
                
        
            
            VStack {
                Text("Select 2 or more categories,")
                    .font(.title2)
                    
                Text("or shuffle it up for mixed categories!")
                    .font(.title2)
                    .multilineTextAlignment(.center )
                
                List {
                    
                    ForEach(allCategories, id: \.name) { category in
                        HStack {
                            Text(category.name)
                            Spacer()
                            Image(systemName: selectedCategories.contains(category.name) ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    toggleCategorySelection(category.name)
                                }
                        }
                    }
                }   .listStyle(PlainListStyle())
                
                
                                        Button("Play!", action: {
                    if selectedCategories.count < 2 {
                        showErrorMessage = true // Show error message
                    } else {
                        isNavigationActive = true
                    }
                                        }) 
                                       
                                        .bold()
                                        .foregroundColor(ColorPallete.primaryDark)
                                        .buttonStyle(.bordered)
                                    
                    Spacer(minLength: 100)
                
                .background(         // Inside CategorySelectionView
                    NavigationLink("", destination: NhieView(selectedCategories: selectedCategories), isActive: $isNavigationActive))
                
                .alert(isPresented: $showErrorMessage) {
                    Alert(
                        title: Text("Selection Error"),
                        message: Text("Please select at least two categories."),
                        dismissButton: .default(Text("OK"))
                    )
                }
                
       


                
                
            }
        } .navigationBarBackButtonHidden(true)
    }
    private func toggleCategorySelection(_ category: String) {
        if selectedCategories.contains(category) {
            selectedCategories.remove(category)
        } else {
            selectedCategories.insert(category)
        }
    }
}



       

        


    #Preview {
        CategorySelectionView()
    }
