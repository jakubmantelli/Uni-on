//
//  Persona.swift
//  TEST2
//
//  Created by Mattia De Franco on 23/10/23.
//

import Foundation
import SwiftUI

struct PersonaDetails: Identifiable {
    
    var id: UUID = UUID()
    
    var Name: String
    var emoji : String
    var imageName: String

    var aboutyou1 : String
    var aboutyou2 : String
    var aboutyou3 : String
    var compatible1 :String
    var compatible2 :String?
   
    var taskTitle1 : String
    var taskDescr1 : String
    var taskTitle2 : String
    var taskDescr2 : String
    var taskTitle3 : String
    var taskDescr3 : String
    var taskTitle4 : String
    var taskDescr4 : String
    var taskTitle5 : String
    var taskDescr5 : String
    var taskTitle6 : String
    var taskDescr6 : String
    
    var description1 = "You are a ..."
    
}
let PersonaData: [(String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String)] = [
    ("Quick Quokka",
     "🐹",
     "Quokka_Transparent",
     "Prefer assertive and straightforward communication",
     "Value clarity and quick action in their interactions",
     "Express their thoughts and feelings in a clear and assertive manner and appreciate others who are similarly direct in their communication",
     "Highly compatible because they offer a complementary balance in communication styles","Lead to productive and harmonious interactions where they cen enhance each other",
     "Deep-Dive Delight 🤿",
     "Delve into meaningful conversations with your college pals! Ask questions like, 'What are your long-term goals?' or 'What's something you've always wanted to try?' and explore each other's dreams and aspirations",
     "Honest Heart-to-Hearts 👼",
     "Time for some honesty hour with your college buddies! Share the quirkiest, most hilarious experiences, or the deep and thoughtful reflections. Get ready for laughter and profound moments",
     "Dream-Team Quest 💭",
     "Explore shared goals and interests with your college crew!  Collaborate on exciting projects that can enhance your friendships and personal growth",
     "Friendship Fusion 🤝",
     "Introduce one of your awesome friends to your college squad! Celebrate the qualities and shared interests they have in common, stimulating new connections and magic moments",
     "Adventure Eats 🍴",
     "Explore local or exotic cuisine with your friends! Try dishes you've never experienced before and share your thoughts on new flavors. It's a culinary adventure that can lead to mouthwatering conversations",
     "Inspirational Talk Show 🐹🐬",
     "Team up with a Compassionate Dolphin persona to host a virtual inspirational talk show for your college friends. Share stories of resilience, creativity, and personal growth. Inspire and entertain your audience!"),
    ("Wise Night Owl",
     "🦉",
     "Owl_Transparent",
     "Value data-driven and logical communication",
     "Prefer to rely on facts and analysis when making decisions or conveying information",
     "Prioritize precision and accuracy in their communication style",
     "Complementarity between analytical and expressive communication styles",
     "",
     "Data Dive Party 🍾",
     "Join your college friends for a data dive party! Team up to tackle datasets and statistics, uncovering data-driven conclusions that'll make you the life of the analytical party",
     "Facts Unleashed 🤯",
     "Get ready to reveal the power of facts with your college crew. Debunk myths and ignite engaging discussions that'll leave your friends in awe of your knowledge",
     "Mind-Bender Challenges 🧘‍♀️",
     "Challenge your college pals with some mind-bending scenarios and puzzles. It's a test of wit and creativity that'll keep your group entertained and engaged",
     "Debate Duel 🤺",
     "Organize friendly debates on intriguing topics with your college buddies. Bring well-researched arguments to the table, fostering in-depth, thought-provoking conversations that even the great thinkers would appreciate",
     "Book Nook Club 📚",
     "Start a mini book club with your friends. Choose books on intriguing subjects or genres, read them together, and have in-depth discussions. Dive into the world of literature and enjoy intellectual conversations",
    "Problem-Solving Extravaganza 🦉🦚",
    "Join forces with a Vibrant Peacock for a problem-solving extravaganza that's part genius, part goofball. Wise Night Owl brings the brainpower, and you add a splash of creativity to find solutions!"),
    ("Vibrant Peacock",
     "🦚",
     "Peacock_Transparent",
     "Embrace emotional and expressive communication",
     "Convey their thoughts and feelings through emotional expression, creativity, and vivid communication",
     "Skilled at sharing their emotions and connecting with others on an emotional level",
     "Complementarity between analytical and expressive communication styles",
     "", 
     "Passion Time 💙",
     "Uncover the quirkiest passions with your friends. Dive deep in what makes each of you tick, no matter how unusual it gets. Get ready for discussions that celebrate individuality and creativity with a dash of humor",
     "Emotional Damage! 🎢",
     "Get ready for an emotional rollercoaster ride! Share your feelings, from the soaring highs to the hilarious lows, in open and heartfelt discussions that'll leave you in stitches and tears",
     "Share Your Song 🎧",
     "Share a song that holds personal meaning or emotion! Discuss the significance of these songs and how they've shaped your experiences and relationships",
     "Snap That! 📸",
     "Become the ultimate campus photographer, capturing unforgettable moments with your college friends and the craziest campus scenes. Share these photos and let the stories and emotions flow",
     "Artsy 👨‍🎨",
     "Time to unleash your inner artists and invite your friends to join the creative fiesta. Whether it's art, music, or writing, let your expressive and creative communication styles shine!",
     "Debate & Doodle Duel 🦚🦉",
    "Work with a  Wise Night Owl  persona and get ready for a creative debate! Make the Wise Night Owl persona present well-researched arguments, while you translate the debate artistically!"),
    ("Compassionate Dolphin",
     "🐬",
     "Dolphin_Transparent",
     "Prioritize understanding others and showing empathy in their communication",
     "Attuned to the emotions and needs of those they interact with",
     "Skilled at listening, empathizing, and providing emotional support to others",
     "Highly compatible because they offer a complementary balance in communication styles",
     "Lead to productive and harmonious interactions where they cen enhance each other",
     "Kindness Rally ☺️",
     "Spread kindness with your college friend each day! Share your experiences and the humorous reactions you receive. It's like starting a kindness wave within your social circle. Encore, please!",
     "Reflect and Giggle 🤭",
     "Take a lighthearted journey through your emotions, challenges, and experiences. Share your insights with a trusted friend, turning it into a delightful stand-up comedy show, where you both find laughs and lessons",
     "Laughter Therapy 🎤",
     "Dive into the world of comedy! Share your favorite jokes, funny videos, or humorous anecdotes with your friends. Laugh together and explore the healing power of humor",
     "Memory Lane Walk 📝",
     "Take a walk down memory lane with your friends. Share funny or heartwarming memories from your earliest days or  childhood. Reminiscing about shared experiences can lead to nostalgic and laughter-filled discussions",
     "Bucket List Bonanza ✍️",
     "Turn your bucket list into a fun-filled expedition! Share and discuss your most daring dreams with your friends. Help each other conquer the wild and humorous items on your lists",
     "Passion Show and Tell 🐬🐹",
    "Collaborate with a Quick Quokka persona to host a 'Passion Show and Tell.' Share your most passionate interests and listen to each other's heartfelt stories. Heartwarming!"),
]


//enum Persona {
//
//    case A    //Persona A (Direct Communicator / Quick Quokka) with a maximum score of 28.
//    case B    //Persona B (Analytical Communicator / Wise Night Owl) with a threshold score of 21 to 27.
//    case C    //Persona C (Expressive Communicator / Vibrant Peacock) with a threshold score of 16 to 20.
//    case D    //Persona D (Empathetic Communicator / Compassionate Dolphin) with a threshold score of 7 to 15.
//
//}
//
//struct OnboardingQuestionnaire: Identifiable, Equatable {
//    var id = UUID()
//    var questionNumber: Int
//    var questionSituation: String
//    var questionText: String
//    var surveyImageName: String
//    var questionAnswers: [String]
//    var questionAnswersPoints: [Int]
//
//    var score: Int {
//        return questionAnswersPoints.reduce(0, +)
//    }
//
//    var persona: Persona {
//        switch score {
//        case 26...:
//            return .A   // Persona A (Direct Communicator / Quick Quokka)
//        case 20...25:
//            return .B   // Persona B (Analytical Communicator / Wise Night Owl)
//        case 14...19:
//            return .C   // Persona C (Expressive Communicator / Vibrant Peacock)
//        case 7...13:
//            return .D   // Persona D (Empathetic Communicator / Compassionate Dolphin)
//        default:
//            return .A   // Default to Persona A if score is out of range
//        }
//    }
//}
//
//let questionData: [(Int, String, String, String, [String], [Int])] = [
//    (1, "You're in a dense forest, and you hear an unfamiliar sound in the distance.", "What's your instinctive reaction?", "survey1", ["Be brave and follow the sound to investigate", "Stay quiet, observe your surroundings", "Retreat cautiously to a safer spot", "Try to identify the sound before taking any action"], [4, 3, 2, 1]),
//    (2, "You find yourself at a spontaneous party with strangers.", "How do you feel and respond?", "survey2", ["Excited and eager to join the festivities", "Calm but observant, waiting for a chance to mingle", "A bit anxious, preferring to stay on the sidelines", "Actively introduce yourself and initiate conversations"], [1, 3, 2, 4]),
//    (3, "You discover a lost wallet on the street.", "What do you do?", "survey3", ["Immediately try to find the owner", "Check for identification and contact the owner later", "Leave it where you found it and move on", "Hold onto it and then actively seek for the owner later"], [4, 3, 1, 2]),
//    (4, "Your outdoor plans get canceled due to unexpected rain.", "How do you adapt?", "survey4", ["Find an indoor activity or board game to enjoy", "Embrace the rain and continue with outdoor plans", "Use the alternative plan you prepared beforehand", "Suggest alternative indoor activities and consider everyone's preferences"], [1, 4, 3, 2]),
//    (5, "You receive a last-minute invitation to a networking event.", "What's your initial reaction?", "survey5", ["Excitement and eagerness to make new connections", "Evaluating if it aligns with your goals before deciding", "Slight reluctance and hesitation about attending", "Consider how you can connect with others and provide support"], [4, 3, 1, 2]),
//    (6, "You're in a foreign country, and no one speaks your language.", "What’s the first step you take?", "survey6", ["Try to communicate through gestures and expressions", "Use a translation app to bridge the language gap", "Stay in familiar tourist areas to avoid language barriers", "Approach locals with a smile, seeking to connect and understand"], [1, 3, 2, 4]),
//    (7, "Your smartphone suddenly stops working during an important call.", "How do you handle it?", "survey7", ["Stay calm and try anything to fix it yourself.", "Seek assistance from a tech-savvy friend or colleague", "Feel frustrated and uncertain about what to do next", "Apologize for the interruption and explain the situation via mail"], [4, 3, 1, 2])
//]
//
//let onboardingQuestions: [OnboardingQuestionnaire] = questionData.map {
//    OnboardingQuestionnaire(questionNumber: $0, questionSituation: $1, questionText: $2, surveyImageName: $3, questionAnswers: $4, questionAnswersPoints: $5)
//}
//
