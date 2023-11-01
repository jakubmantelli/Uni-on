//
//  Onboarding.swift
//  Uni-on
//
//  Created by Mikayla Kim on 21/10/23.
//

import SwiftUI

struct PageView: View {
    
    
    var page: Page
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                ColorPallete.primaryLight
                    .ignoresSafeArea()
                
                VStack(spacing:20){
                    Image("\(page.imageUrl)")
                    //.resizable()
                        .padding(.top,53)
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .foregroundColor(.clear)
                    //.frame(width: 393, height: 852)
                    
                    
                    Text(page.title)
                        .padding(.top, 50)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(width: 361)
                        .multilineTextAlignment(.center)
                    
                    Text(page.description)
                        .font(.body)
                        .fontWeight(.regular)
                        .frame(width: 361)
                        .multilineTextAlignment(.center)
                    
                }
                
            }
            
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
}


#Preview {
    PageView(page: .samplePage)
}
