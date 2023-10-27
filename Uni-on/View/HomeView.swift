//
//  DetailView.swift
//  Beer
//
//  Created by Micol Sofia Gravina on 23/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color(ColorPallete.primaryLight).ignoresSafeArea()
                
                VStack {
                    Text("Uni-on!")
                        .offset(y:5)
                        .font(.title2)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(ColorPallete.primary)
                        .frame(width:361, height: 154)
                        .overlay(
                            NavigationLink(destination: ProfileView()) {
                                HStack {
                                    VStack {
                                        
                                            Text("Welcome👋🏻")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                                .offset(y:10)
                                            
                                            
                                            Text("Compassionate Dolphin")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                                .padding(.bottom, 50)
                                            
                                                .offset(y:10)
                                                .lineLimit(2)
                                            
                                            Text("View Profile")
                                                .foregroundColor(.white)
                                        
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                     
                                                .offset(y: -30)
                                            
                                            
                                        }
                                        
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, 20)
                                        
                                        Image("Owl_Transparent")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(Circle())
                                            .frame(width: 120)
                                        
                                        
                                           
                                        
                                    }
                                    
                                    
                                })
                                
                                
                                
                                
                                
                            
                        
                        .padding(.bottom, 120)
                    
                    VStack {
                        
                        NavigationLink(destination: NhieOnboardingView()) {
                            Circle()
                                .frame(width: 233, height: 233)
                                .foregroundColor(.white)
                            
                                .overlay(
                                    Image("onboardingLogo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(Ellipse())
                                        .padding())
                                .offset(y:-50)
                    
                            
                            
                        } .padding(.bottom, 150)
                        
                        Text("Tap to begin...")
                            .font(.subheadline)
                            .foregroundColor(ColorPallete.primary)
                            .offset(y: -200)
                    }
                } .preferredColorScheme(.light) //force light mode
                
            }

            
        }        .navigationBarBackButtonHidden(true)
        
    
    }
}

#Preview {
    HomeView()
}

