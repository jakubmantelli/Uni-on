
//
//  EntryAnimation.swift
//  Uni-on
//
//  Created by Mikayla Kim on 23/10/23.
//

import SwiftUI

struct EntryAnimation: View {
    @State private var isActive: Bool = false
    @State private var navigateToNextView = false
    
    var body: some View {
        NavigationView {
            
            ZStack{
                ColorPallete.primaryLight
                    .ignoresSafeArea()
                Image("onboardingLogo")
                    .padding(.top, 100)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .foregroundColor(.clear)
                    .padding(.bottom,300)
                Spacer()
                
                Spacer()
                
                Text("Uni-On")
                    .padding(.top,150)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("All it takes is a tap to get to know \n the people around you")
                    .padding(.top,250)
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: OnboardingContent(), isActive: $navigateToNextView,
                               label: {
                    EmptyView()
                    
                })
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        self.navigateToNextView = true //would be nice to make it dissolve, not slide in
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    EntryAnimation()
}
