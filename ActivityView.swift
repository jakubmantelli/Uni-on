//
//  ActivityView.swift
//  Beer
//
//  Created by Micol Sofia Gravina on 20/10/23.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
       
        NavigationView{
            VStack {
                ScrollView {
                    VStack (alignment: .leading) {
                        Group {
                            Text("Data Dive Party 🍾")
                                .bold()
                            Text("Join your collage friends for a data dive party! Team up to tackle datasets and static, uncovering data-driven conclusion that'll make you the life of the analytical party.")
                        }
                        .padding()
                        
                        Group{
                            Text("Fact Unleashed 🤯")
                                .bold()
                            
                            Text("Get ready to reveal the power of facts withyour college crew. Debunk myths and ignite engaging discussion that'll leave your friends")
                        }
                        .padding()
                        
                        Group{
                            Text("Mind-Bender Challenges 🧘🏻‍♀️")
                                .bold()
                            
                            Text("Challenge your college pals with some mind-bending scenarios and puzzles. It's a test of wit and creativity that'll keep your group entertained and engaged")
                            
                        }
                        .padding()
                        Group{
                            Text("Debate Duel 🤺")
                                .bold()
                            
                            Text("Organize friendly debates on intriguing topics with your college buddies. Bring well-researched arguments to the table, fostering in-depth, thought-provoking conversations that even the great thinkers would appreciate.")
                            
                        }
                        .padding()
                        Group{
                            Text("Book Nook Club 📚")
                                .bold()
                            
                            Text("Start a mini book club with your friends.Choose books on intriguing subjects or genres read them together, and have in-depth discussion. Dive into the world of literature and enjoy intellectual conversations")
                        }
                        .padding()
                        
                        Group{
                            Text("Problem-Solving Extravaganza🦉")
                                .bold()
                            
                            Text("Join forces with a Vibrant Peacock for a problem-solving extravaganza that's part genious, part goofball. Wise Night Owl brings the brainpower, and you add a splash of creativity to find solution")
                        }
                        .padding()
                    }
                }
                .navigationTitle("Your Special Activity")
            }
            .padding()
        }
    }
    }



#Preview {
    ActivityView()
}
