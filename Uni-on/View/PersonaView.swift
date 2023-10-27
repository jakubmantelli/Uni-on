//
//  PersonaView.swift
//  TEST2
//
//  Created by Mattia De Franco on 23/10/23.
//

import SwiftUI
import Foundation

struct PersonaView: View {
    
    
    
    var Persona: Persona
    
    
    var body: some View {
        
        NavigationStack {
            ColorPallete.primaryLight
                .overlay(
                VStack {
                    
                    Text("Congratulations")
                        .bold()
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    
                    
                    Image(Persona.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 15)
                        .padding()
                    
                    Text(Persona.description1)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold()
                    
                    Text(Persona.description2)
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
            
                }).ignoresSafeArea()
            
           
            
                }
     
        }
    
    }


#Preview {
    PersonaView(Persona:
                    Persona(description1:"",
                                description2: "Wise Night Owl 🦉",
                                imageName: "OwlFull")
    )
}
