//
//  ResultLoading.swift
//  Uni-on
//
//  Created by Mikayla Kim on 23/10/23.
//

import SwiftUI

struct ResultLoading: View {
    var body: some View {
        
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
            
            //how to i connect this with the result page after "delay"?
            
            
        }
        
    }
    
}

#Preview {
    ResultLoading()
}
