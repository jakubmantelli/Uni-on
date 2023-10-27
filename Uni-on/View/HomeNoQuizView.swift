//
//  ContentView.swift
//  Beer
//
//  Created by Micol Sofia Gravina on 19/10/23.
//

import SwiftUI


struct HomeNoQuizView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(ColorPallete.primaryLight).ignoresSafeArea()
                VStack {
                    Text("Uni-on!")
                        .offset(y:5)
                        .font(.title2)
                        .foregroundColor(.gray)
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(Color(ColorPallete.primary))
                        .frame(width:361, height: 154)
                        
                        .overlay(
                            HStack {
                                VStack {
                                    
                                    Text("What is your spirit animal?🦄")
                                        .font(.title3)
                                    
                                        .padding(.top)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                        .offset(x:20)
                                        
                                    
                                    Text("Discover your communication style!")
                                        .font(.body)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                        .offset(x:10)
                                        .padding(.bottom, 10)
                                    
                                    
                                    
                                    
                                    NavigationLink(destination: EmptyView()) {
                                        Text("Take Quiz")
                                        // Image(systemName: "hand.point.up.left.fill")
                                        
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                            .padding(8)
                                        
                                            .background(Color.black)
                                            .cornerRadius(40)
                                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                            .offset(x:10)
                                            .padding(.bottom, 20)
                                    }
                                    
                                }
                            }) .padding(.bottom, 80)
                            
                            
                            
                        
                    
                    
                    
                    
                    
                    
        //LOGO 
                    VStack {
                        
                        NavigationLink(destination: NhieOnboardingView()) {
                            Circle()
                                .frame(width: 233, height: 233)
                                .foregroundColor(.white)
                            
                                .overlay(
                                    Image("onboardingLogo")
                                        .resizable()
                                    
                                        .clipShape(Ellipse())
                                        .padding())
                                .padding(90)
                                .offset(y:-50)

                        
             
                            
                        } 
                        Text("Tap to begin...")
                            .foregroundColor(ColorPallete.primary)
                            .padding()
                            .offset(y:-150)
                    
                        
                        
                        
                        }
                  
                }
                
                .preferredColorScheme(.light) //force light mode
                        
                        
                        
                    
                    
                }

                
                
        } .navigationBarBackButtonHidden(true)
        }
        
    }

      



#Preview {
    HomeNoQuizView()
}



