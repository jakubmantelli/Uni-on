//
//  PersonaView.swift
//  TEST2
//
//  Created by Mattia De Franco on 23/10/23.


import SwiftUI
import Foundation


struct PersonaView: View {
    @State private var shouldNavigateToHome = false
    
    
    
    let persona = PersonaDataStore.PersonaData[1]

    
    var body: some View {
        
        NavigationStack {
            ColorPallete.primaryLight
                .overlay(
                VStack {
                    
                    Text("Congratulations!")
                        .bold()
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    
                    
                    Image(persona.2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 15)
                        .padding()
                    
                    Text("You are a ...")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold()
                    
                    Text(persona.0 + persona.1)
                        .font(.title)
                        .bold()
                 
                    
                    NavigationLink(destination: ProfileView()) {
                        Text("")
                            .frame(width: 300, height: 50)
                            .background(
                                ZStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .cornerRadius(8)
                                    
                                    HStack {
                                        Image(systemName: "book.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(.white)
                                        
                                        Text("Learn more about your persona")
                                            .foregroundColor(.white)
                                    }
                                }
                            )
                    }
                    Button(action: {
                        shouldNavigateToHome = true // Set the state variable to trigger navigation
                    }) {
                        Text("Skip")
                            .underline()
                            .padding()
                            .font(.body)
                            .foregroundColor(.black)
                    }

                    NavigationLink(
                        destination: HomeView(),
                        isActive: $shouldNavigateToHome
                    ) {
                        EmptyView()
                    }
      
                    

            
                }).ignoresSafeArea()
            
           
            
        } .navigationBarBackButtonHidden(true)
     
        }
    
    }


#Preview {
    PersonaView()
}

