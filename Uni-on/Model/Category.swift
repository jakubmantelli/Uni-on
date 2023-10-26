//
//  Questions.swift
//  neverhaveiever
//
//  Created by Jakub Mantelli on 18/10/23.
//

import Foundation


struct Category: Identifiable {
    
    
    var id = UUID()
    
    
    
    
    var name: String
    var question: [String]
    
}


//All Categoeries questions

let allCategories = [
    Category(name: "Hobbies & Interests", question: [
                                                            "Never have I ever tried an unconventional hobby just for the thrill of it.",
                                                            "Never have I ever organized a spontaneous road trip with friends.",
                                                            "Never have I ever participated in a quirky scavenger hunt around campus.",
                                                            "Never have I ever tried a new food recipe from a different culture.",
                                                            "Never have I ever watched a ballet show.",
                                                            "Never have I ever been to a different continent/traveled to a foreign country.",
                                                            "Never have I ever missed a flight.",
                                                            "Never have I ever backpacked through Europe.",
                                                            "Never have I ever traveled solo.",
                                                            "Never have I ever gotten lost in a foreign country.",
                                                            "Never have I ever gone on a road trip with friends.",
                                                            "Never have I ever gone on a road trip.",
                                                            "Never have I ever ridden a motorcycle.",
                                                            "Never have I ever gone camping.",
                                                            "Never have I ever slept under the stars.",
                                                            "Never have I ever attended a midnight movie premiere.",
                                                            "Never have I ever gone to a protest or demonstration.",
                                                            "Never have I ever written a poem or a song.",
                                                            "Never have I ever sung karaoke in public.",
                                                            "Never have I ever participated in a talent show.",
                                                            "Never have I ever gotten a tattoo."
    ]),
    
 Category(name: "Movies & TV Shows", question: [
                                                            "Never have I ever watched a classic movie and genuinely enjoyed it.",
                                                            "Never have I ever had a movie marathon night with friends.",
                                                            "Never have I ever dressed up as a character from a movie or TV show for Halloween.",
                                                            "Never have i ever binge-watched a full movie saga.",
                                                            "Never have i ever met a movie or TV show celebrity.",
                                                            "Never have i ever stayed up all night to finish a TV series or a book. ",
                                                            "Never have i ever watched an horror movie.",
                                                            "Never have i ever watched a 5 season TV Show.",
                                                            "Never have i ever watched a movie with friends that i didn’t enjoy.",
                                                            "Never have i ever watched a romantic movie with the person i had a crush on.",
                                                            "Never have i ever fell asleep while watching a movie with friends."
                                                            
]),
    Category(name: "Sports & Fitness", question: [
                                                            "Never have I ever went to a sports event regardless of knowing anything about it.",
                                                            "Never have I ever taken part in a friendly sport competition with friends.",
                                                            "Never have I ever laughed so hard during a workout class that I couldn't finish it.",
                                                            "Never have i ever had a muscle injury while working out.",
                                                            "Never have I ever been to a gym",
                                                            "Never have I ever done more than 5 crunches",
                                                            "Never have I ever done skydiving",
                                                            "Never have I ever done iceskating",
                                                            "Never have I ever ridden on a skateboard",
                                                            "Never have I ever been hiking",
                                                            "Never have I ever taken proteins",
                                                            "Never have I ever done deadlifting",
                                                            "Never have I ever done jogging"
    ]),
    Category(name: "Music & Concerts", question: [
                                                            "Never have I ever attended a live concert for a musician or band I'd never heard of before.",
                                                            "Never have I ever danced like nobody was watching at a music festival.",
                                                            "Never have I ever made a hilarious playlist for a themed party.",
                                                            "Never have I ever been to a concert",
                                                            "Never have I ever sang a song in front of somebody",
                                                            "Never have I ever written a song",
                                                            "Never have I ever listened to a metal song",
                                                            "Never have I ever listened to KPOP",
                                                            "Never have I ever played an instrument",
                                                            "Never have I ever played a guitar",
                                                            "Never have I ever played drums",
                                                            "Never have I ever done karaoke",
                                                            "Never have I ever produced a song",
                                                            "Never have I ever gone to a concert alone",
                                                            "Never have I ever been in a concert in a different country",
                                                            "Never have I ever cried while listening to a song",
                                                            "Never have I ever posted a video online of me singing"
                                                            
    ]),
    Category(name: "Foods & Dining", question: [
                                                            "Never have I ever tried a bizarre food combination that actually tasted surprisingly good.",
                                                            "Never have I ever attempted to cook an exotic dish with friends, even if we didn't follow the recipe exactly.",
                                                            "Never have I ever had a late-night food adventure with friends, trying out local eateries.",
                                                            "Never have I ever eaten something spicy enough to make me cry.",
                                                            "Never have I ever ordered food online",
                                                            "Never have I ever used chopsticks",
                                                            "Never have I ever eaten junk food",
                                                            "Never have I ever eaten sea food"
    ]),
    Category(name: "Book & Literature", question: [
                                                            "Never have I ever read a book in a single sitting because I couldn't put it down.",
                                                            "Never have I ever joined a book club just to meet new people and have interesting discussions.",
                                                            "Never have I ever created funny book-themed memes or jokes with friends.",
                                                            "Never have I ever read a manga",
                                                            "Never have I ever bought a book that i never read",
                                                            "Never have I ever read a book on a train",
                                                            "Never have I ever read a page of the Bible"
                                                        
    
    ]),
    Category(name: "Campus Events or Activities", question: [
                                                            "Never have I ever attended a campus event purely for the entertainment value, regardless of the theme.",
                                                            "Never have I ever participated in a weird and fun tradition unique to our school.",
                                                            "Never have I ever participated in an impromptu flash mob or surprise event on campus."
    ]),
    Category(name: "Culture About the City/Country", question: [
                                                            "Never have I ever explored the city without using GPS, relying on my instincts to get around.",
                                                            "Never have I ever tasted the local street food, recommended by a local, and loved it.",
                                                            "Never have I ever struck up a friendly conversation with a stranger to learn more about their culture and traditions"
    
    ]),
    Category(name: "Relationships & Romance", question: [
                                                            "Never have I ever had a blind date.",
                                                            "Never have I ever been in a long-distance relationship.",
                                                            "Never have I ever been on a dating app.",
                                                            "Never have I ever had a crush on someone in this room.",
                                                            "Never have I ever ghosted someone.",
                                                            "Never have I ever been in a love triangle.",
                                                            "Never have I ever had a one-night stand.",
                                                            "Never have I ever been caught sneaking out of someone's house.",
                                                            "Never have I ever dated someone significantly older or younger than me.",
                                                            "Never have I ever been in love at first sight.",
                                                            "Never have I ever written a love letter.",
                                                            "Never have I ever kissed someone of the same gender.",
                                                            "Never have I ever been caught doing something naughty by my parents.",
                                                            "Never have I ever role-played in the bedroom."
                                            
                                                            
    
    ]),
    Category(name: "Adventures & Thrills", question: [
                                                            "Never have I ever gone skydiving.",
                                                            "Never have I ever ridden on a roller coaster.",
                                                            "Never have I ever gone bungee jumping.",
                                                            "Never have I ever gone scuba diving.",
                                                            "Never have I ever gone skinny dipping.",
                                                            "Never have I ever won a contest or competition.",
                                                            "Never have I ever ridden a motorbike"
                                            
                                                            
    ]),
    Category(name: "Personal Experiences", question: [
                                                            "Never have I ever sent a text to the wrong person.",
                                                            "Never have I ever fallen in public.",
                                                            "Never have I ever accidentally insulted someone.",
                                                            "Never have I ever had a paranormal experience.",
                                                            "Never have I ever laughed so hard I snorted.",
                                                            "Never have I ever posted something I later regretted.",
                                                            "Never have I ever had a social media account that I hide from my family.",
                                                            "Never have I ever gone viral on YouTube."
                                                          
    ]),
    Category(name: "Career & Education", question: [
                                                            "Never have I ever skipped a class or a meeting.",
                                                            "Never have I ever changed my major or career path.",
                                                            "Never have I ever had a job I hated.",
                                                            "Never have I ever pulled an all-nighter for work or studying.",
                                                            "Never have I ever cheated on a test or exam.",
                                                            "Never have I ever received a scholarship or academic award.",
                                                            "Never have I ever regretted not pursuing higher education.",
                                                            "Never have I ever delivered a presentation or speech in front of a large audience.",
                                                            "Never have I ever lied on my resume or job application.",
                                                            "Never have I ever started my own business or side hustle."
                                                        
    ])
    
]
