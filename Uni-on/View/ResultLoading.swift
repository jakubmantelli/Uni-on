//
//  ResultLoading.swift
//  Uni-on
//
//  Created by Mikayla Kim on 23/10/23.
//

import SwiftUI

struct ResultLoading: View {
    @State private var isActive:Bool = false
    @State private var navigateToNext = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                ColorPallete.primaryLight
                    .ignoresSafeArea()
                
                Spacer()
                ProgressView()
                
                    .scaleEffect(CGSize(width: 3.0, height: 3.0))
                    .tint(ColorPallete.primary)
                    .padding(.bottom,40)
                
                Text("All done!")
                    .padding(.top,150)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(ColorPallete.primary)
                Spacer(minLength: 20)
                
                Text("We are analysing your answers...")
                    .padding(.top,30)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(ColorPallete.primary)
                    .padding(.top, 200)
                Spacer()
                
                NavigationLink(destination: OnboardingContent(), isActive: $navigateToNext, label: {
                    EmptyView() //needs to be connected to survey result page ⛔️, would be nice to make it dissolve, not slide in
                }).onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.navigateToNext = true
                    }
                    
                    
                }
                
                
            }
            
            
        }
        
        
    }
    
}

#Preview {
    ResultLoading()
}
