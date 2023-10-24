//
//  EntryAnimation.swift
//  Uni-on
//
//  Created by Mikayla Kim on 23/10/23.
//

import SwiftUI

struct EntryAnimation: View {
    var body: some View {
        
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
            
            Text("All it takes is a tap \n to get to know the people around you")
                .padding(.top,250)
                .font(.title3)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
        }
        
        
    }
}

#Preview {
    EntryAnimation()
}
