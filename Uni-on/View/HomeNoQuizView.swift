//
//  ContentView.swift
//  Beer
//
//  Created by Micol Sofia Gravina on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.92, green: 0.94, blue: 1).ignoresSafeArea()
                VStack {
                
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
                    .frame(width: UIScreen.main.bounds.width, height: 200)
                    .overlay(
                        VStack(alignment: .leading) {
                            Text("What is your spirit animal?🦄")
                                .font(.title)
                                .bold()
                                .padding(.top)
                                .foregroundColor(.white)
                            
                            Text("Discover your communication style\nthrough a one minute quiz")
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                            
                            Button(action: {
                                // Azioni da eseguire quando il pulsante viene premuto
                                Image(systemName: "hand.point.up.left.fill")
                            }) {
                                Text("Take a quiz")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200, height: 80)
                                    .background(Color.black)
                                    .cornerRadius(40)
                            }
                        }
                    )
                    .padding(.bottom, 30)
                    .navigationTitle("Uni-on")
                
                Circle()
                    .frame(width: 500, height: 300)
                    .foregroundColor(.white)
                    .overlay(
                        Image("unicologo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding()
                    )
                    .padding(.bottom, 30)
                
                ZStack {
                    Button(action: {
                        // Azioni da eseguire quando il pulsante viene premuto
                    }) {
                        Text("Start Game")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 80)
                            .background(Color.black)
                            .cornerRadius(10)
                        
                    }
                }
                    
                }
            }
        }
        
    }
}
      


#Preview {
    ContentView()
}



