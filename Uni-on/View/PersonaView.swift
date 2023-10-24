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
                VStack {
                    
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
                        .font(.title)
                        .bold()
                    
                    Text(Persona.description2)
                        .font(.title2)
                        .bold()
                    
            
                }
            
                .navigationTitle("Result")
                .bold()
                .font(.title)
                .multilineTextAlignment(.center)
            
        }
        Spacer()

       // Button("Learn more about your persona", systemImage: "book", action: PersonaDetailViewModel.)
         //   .padding()
       //     .font(.body)
           // .foregroundColor(.white)
          //  .background(RoundedRectangle(cornerRadius: 12).foregroundColor(.black))
           // .padding()
        Spacer()
        
        }
    
    }



#Preview {
    PersonaView(Persona:
                        Persona(description1: "You are a ...",
                                description2: "Wise Night Owl 🦉",
                                imageName: "Wise Night Owl")
    )
}
