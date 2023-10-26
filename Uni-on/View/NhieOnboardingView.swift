//
//  SwiftUIView.swift
//  Uni-on
//
//  Created by Jakub Mantelli on 19/10/23.
//

import SwiftUI

struct NhieOnboardingView: View {
    var body: some View {
        NavigationView {
            
            ColorPallete.primaryLight
                .overlay(
            VStack{
            
                    
                
                Image("onb_placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350)
        
                
                
                Text("Deepen relationships one revelation at a time")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .bold()
                    .padding()
                    
                Text("Select 2 or more categories, take turns saying 'Never Have I Ever' statements, and watch stories unfold!")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
               
            
                
                
                NavigationLink(destination: CategorySelectionView()) {
                    
                    Text("Start playing")
                        .frame(width: 150, height: 50)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                    
                      
                } 
                
            }) .ignoresSafeArea()
            
            
                
            .preferredColorScheme(.light) //force light mode
              

        
      
        }  .navigationBarBackButtonHidden(true)
    }
    
}
#Preview {
    NhieOnboardingView()
}
