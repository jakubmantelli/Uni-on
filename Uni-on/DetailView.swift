//
//  DetailView.swift
//  Beer
//
//  Created by Micol Sofia Gravina on 23/10/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 0.92, green: 0.94, blue: 1).ignoresSafeArea()

                VStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
                        .frame(width: UIScreen.main.bounds.width, height: 200)
                        .overlay(
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Welcome👋🏻")
                                        .font(.title)
                                        .bold()
                                        .padding(.top)
                                        .foregroundColor(.white)

                                    Text("Wise Night Owl")
                                        .font(.subheadline)
                                        .bold()
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.white)
                                        Spacer()
                                    
                                    
                                    NavigationLink(destination: ProvaView()) {
                                        Text("View Profile")
                                            .foregroundStyle(.white)
                                    }
                                    
                                    
                                }
                                .padding(.leading, 20)

                                Image("Owl_Transparent")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .shadow(radius: 100)
                                    .padding(.bottom, 20)
                                    .frame(width: 200, height: 200)
                              
                               
                                
                                
                                
                                
                                
                                
                            }
                        )
                        .padding(.bottom, 30)
                        .navigationTitle("Uni-On")

                    Circle()
                        .frame(width: 500, height: 300)
                        .foregroundColor(.white)
                        .overlay(
                            Image("unicologo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .shadow(radius: 10)
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
            
            /* ZStack{
             
             VStack {
             RoundedRectangle(cornerRadius: 10.0)
             .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
             .frame(width: UIScreen.main.bounds.width, height: 200)
             .overlay(
             
             HStack{
             
             VStack(alignment: .leading) {
             Text("Welcome👋🏻")
             .font(.title)
             .bold()
             .padding(.top)
             .foregroundColor(.white)
             Text("Wise Night Owl")
             .font(.subheadline)
             .bold()
             .multilineTextAlignment(.center)
             .foregroundColor(.white)
             Spacer()
             }
             Image("Owl_Transparent")
             .resizable()
             .aspectRatio(contentMode: .fit)
             .clipShape(Circle())
             .shadow(radius: 100)
             .padding(.bottom, 20)
             .frame(width: 100)
             Button("View profile") {
             
             }
             .foregroundColor(.white)
             
             
             }
             )*/
            
            /*RoundedRectangle(cornerRadius: 10.0)
             .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
             .frame(width: UIScreen.main.bounds.width, height: 200)
             .overlay(
             HStack{
             VStack(alignment: .leading) {
             Text("Welcome👋🏻")
             .font(.title)
             .bold()
             .padding(.top)
             .foregroundColor(.white)
             
             Text("Wise Night Owl")
             .font(.subheadline)
             .bold()
             .multilineTextAlignment(.center)
             .foregroundColor(.white)
             .padding(.bottom, 80)
             
             
             
             
             
             
             
             Image("Owl_Transparent")
             .resizable()
             .aspectRatio(contentMode: .fit)
             .clipShape(Circle())
             .shadow(radius: 100)
             .padding(.bottom, 20)
             .frame(width: 200, height:200)
             )*/
            
        }
        
        
        /*.padding(.bottom, 30)
         .navigationTitle("Uni-On")
         
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
         
         }*/
    }
}

#Preview {
    DetailView()
}







/*VStack {
 RoundedRectangle(cornerRadius: 10.0)
 .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
 .frame(width: UIScreen.main.bounds.width, height: 200)
 .overlay(
 
 HStack{
 
 VStack(alignment: .leading) {
 Text("Welcome👋🏻")
 .font(.title)
 .bold()
 .padding(.top)
 .foregroundColor(.white)
 Text("Wise Night Owl")
 .font(.subheadline)
 .bold()
 .multilineTextAlignment(.center)
 .foregroundColor(.white)
 Spacer()
 }
 Image("Owl_Transparent")
 .resizable()
 .aspectRatio(contentMode: .fit)
 .clipShape(Circle())
 .shadow(radius: 100)
 .padding(.bottom, 20)
 .frame(width: 100)
 Button("View profile") {
 
 }
 .foregroundColor(.white)
 
 
 }
 )
 
 
 
 VStack {
     RoundedRectangle(cornerRadius: 10.0)
         .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
         .frame(width: UIScreen.main.bounds.width, height: 200)
         .overlay(
             HStack{
                 VStack(alignment: .leading) {
                     Text("Welcome👋🏻")
                         .font(.title)
                         .bold()
                         .padding(.top)
                         .foregroundColor(.white)
                     Text("Wise Night Owl")
                         .font(.subheadline)
                         .bold()
                         .multilineTextAlignment(.center)
                         .foregroundColor(.white)
                     Spacer()
                 }
                 Image("Owl_Transparent")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .clipShape(Circle())
                     .shadow(radius: 100)
                     .padding(.bottom, 20)
                     .frame(width: 100)

                 // Inserisci il pulsante qui
                 Button("View profile") {
                     /* Azioni da eseguire quando il pulsante viene premuto */
                 }
                 .foregroundColor(.white)
             }
         )
 }
*/
