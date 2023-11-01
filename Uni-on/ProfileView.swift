//
//  ProfileView.swift
//  Beer
//
//  Created by Micol Sofia Gravina on 23/10/23.
//

import SwiftUI

struct ProfileView: View {
    @State var isActivity: Bool = false
    var body: some View {
        NavigationView{
            ScrollView{
                
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
                                    .frame(width: 210, height: 220)
                            }
                        )
                        .navigationTitle("Persona profile")
                    VStack (alignment: .leading)
                    {
                        Text("About You")
                            .bold()
                            .padding(.bottom, 22)
                        VStack(alignment: .leading, spacing: 8){
                            Text("• Value data-driven and logical communication")
                            Text("• Prefer to rely on facts and analysis when making decisions or conveying information")
                            Text("• Prioritize precision and accuracy in their communication style")
                               
                        }
                        .padding(.bottom,22)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Most Compatible With...")
                                    .bold()
                                
                                Text("Vibrant Peackock🦚")
                                    .bold()
                                    .padding(.bottom, 22)
                                
                            }
                            
                            Image("Peacock_Transparent")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .frame(width: 100, height: 70)
                                .padding(.bottom, 22)
                        }
                        VStack(alignment: .leading, spacing: 8){
                            Text("• Complimentary between analytical and expressive comunication styles")
                            Text("• Take a look at your profile to learn more")
                            
                        }
                        .padding(.bottom, 22)
                        
                        
                        
                        HStack {
                            Text("Your Special Activity")
                                .bold()
                                .padding(.bottom, 22)
                            
                            
                            NavigationLink(destination: ProfileView()) {
                                          
                            }
                            
                            
                            
                                Button {
                                    isActivity.toggle()
                                } label: {
                                    Image(systemName: "info.circle.fill")
                                        .padding(.bottom, 22)
                                        .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
                                }
                                .sheet(isPresented: $isActivity) {
                                    ActivityView()
                                }
                                .padding(.horizontal)
                            
                            
                            
                            
                            
                            
                            /*Button {
                                isActivity.toggle()
                            } label: {
                                Image(systemName: "info.circle.fill")
                                    .padding(.bottom, 22)
                                    .foregroundColor(Color(red: 0.569, green: 0.625, blue: 0.887))
                            }
                            .sheet(isPresented: $isActivity) {
                                ProfileView()
                            }*/

                        }
                        Text("We have something special for you to spice things up! Tap on the information button to see what activities we have for you. This will help you get to know the people around you.")
                        Text("Relax, enjoy and have fun ")
                        
                    }
                    .padding(20)
                }
            }
            
                
                
                
            
        }
       // .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ProfileView()
}
