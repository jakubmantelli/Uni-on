//
//  CategorySelectionView.swift
//  Uni-on
//
//  Created by Jakub Mantelli on 20/10/23.
//

import SwiftUI

struct CategorySelectionView: View {
    @State private var selectedCategories: Set<String> = []
    
    let allCategories = [
        "Hobbies & Interests",
        "Movies & TV Shows",
        "Sports & Fitness",
        "Music & Concerts",
        "Books & Literature",
        "Food & Dining",
        "Campus Events & Activities",
        "Campus City & Country",
        "Career & Education",
        "Personal Experiences"
        // Add more categories as needed
    ]

    var body: some View {
        
       
        NavigationView {
            
           
            VStack {
                
                
                
                Text("Select 2 or more categories")
                Text("or shuffle it up for mixed categories!")
                
                
                List {
                    
                    ForEach(allCategories, id: \.self) { category in
                        MultipleSelectionRow(
                            category: category,
                            isSelected: self.selectedCategories.contains(category)
                        ) {
                            if self.selectedCategories.contains(category) {
                                self.selectedCategories.remove(category)
                            } else {
                                self.selectedCategories.insert(category)
                            }
                        }
                    }
                } .listStyle(PlainListStyle())
                
                VStack{
                    
                    
                    NavigationLink(destination: NhieView()) {
                        
                        Text("Shuffle it up!")
                            .frame(width: 150, height: 50)
                            .background(ColorPallete.secondaryLight)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                            .padding(40)
                        
                    }
                    
                    NavigationLink(destination: NhieView()) {
                        
                        Text("Start playing")
                            .frame(width: 150, height: 50)
                            .background(ColorPallete.primaryDark)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding()
                        
                        
                        
                    } 
                }
                
                
                
                
            }
        } .navigationBarBackButtonHidden(true)
    }
} 
//crazy struct for making more categories selectable


struct MultipleSelectionRow: View {
    var category: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            HStack {
                Text(category)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

   

    


#Preview {
    CategorySelectionView()
}
