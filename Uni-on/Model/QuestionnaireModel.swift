//
//  Questionnaire.swift
//  Uni-on
//
//  Created by Mohammad Solki on 24/10/23.
//

import Foundation

enum Persona {

    case A    //Persona A (Direct Communicator / Quick Quokka) with a maximum score of 28.
    case B    //Persona B (Analytical Communicator / Wise Night Owl) with a threshold score of 21 to 27.
    case C    //Persona C (Expressive Communicator / Vibrant Peacock) with a threshold score of 16 to 20.
    case D    //Persona D (Empathetic Communicator / Compassionate Dolphin) with a threshold score of 7 to 15.

}

struct OnboardingQuestionnaire: Identifiable, Equatable {
    var id = UUID()
    var questionNumber: Int
    var questionSituation: String
    var questionText: String
    var surveyImageName: String
    var questionAnswers: [String]
    var questionAnswersPoints: [Int]

    var score: Int {
        return questionAnswersPoints.reduce(0, +)
    }
    
    static func persona(forScore score: Int) -> Persona {
        switch score {
        case 26...:
            return .A   // Persona A (Direct Communicator / Quick Quokka)
        case 20...25:
            return .B   // Persona B (Analytical Communicator / Wise Night Owl)
        case 14...19:
            return .C   // Persona C (Expressive Communicator / Vibrant Peacock)
        case 7...13:
            return .D   // Persona D (Empathetic Communicator / Compassionate Dolphin)
        default:
            return .A   // Default to Persona A if score is out of range
        }
    }


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
}

let questionData: [(Int, String, String, String, [String], [Int])] = [
    (1, "You're in a dense forest, and you hear an unfamiliar sound.", "What's your instinctive reaction?", "survey1", ["Be brave and follow the sound to investigate", "Stay quiet, observe your surroundings", "Retreat cautiously to a safer spot", "Try to identify the sound before taking any action"], [4, 3, 2, 1]),
    (2, "You find yourself at a spontaneous party with strangers.", "How do you feel and respond?", "survey2", ["Excited and eager to join the festivities", "Calm but observant, waiting for a chance to mingle", "A bit anxious, preferring to stay on the sidelines", "Actively introduce yourself and initiate conversations"], [1, 3, 2, 4]),
    (3, "You discover a lost wallet on the street.", "What do you do?", "survey3", ["Immediately try to find the owner", "Check for identification and contact the owner later", "Leave it where you found it and move on", "Hold onto it and then actively seek for the owner later"], [4, 3, 1, 2]),
    (4, "Your outdoor plans get canceled due to unexpected rain.", "How do you adapt?", "survey4", ["Find an indoor activity or board game to enjoy", "Embrace the rain and continue with outdoor plans", "Use the alternative plan you prepared beforehand", "Suggest alternative indoor activities and consider everyone's preferences"], [1, 4, 3, 2]),
    (5, "You receive a last-minute invitation to a networking event.", "What's your initial reaction?", "survey5", ["Excitement and eagerness to make new connections", "Evaluating if it aligns with your goals before deciding", "Slight reluctance and hesitation about attending", "Consider how you can connect with others and provide support"], [4, 3, 1, 2]),
    (6, "You're in a foreign country, and no one speaks your language.", "What’s the first step you take?", "survey6", ["Try to communicate through gestures and expressions", "Use a translation app to bridge the language gap", "Stay in familiar tourist areas to avoid language barriers", "Approach locals with a smile, seeking to connect and understand"], [1, 3, 2, 4]),
    (7, "Your smartphone suddenly stops working during an important call.", "How do you handle it?", "survey7", ["Stay calm and try anything to fix it yourself.", "Seek assistance from a tech-savvy friend or colleague", "Feel frustrated and uncertain about what to do next", "Apologize for the interruption and explain the situation via mail"], [4, 3, 1, 2])
]

let onboardingQuestions: [OnboardingQuestionnaire] = questionData.map {
    OnboardingQuestionnaire(questionNumber: $0, questionSituation: $1, questionText: $2, surveyImageName: $3, questionAnswers: $4, questionAnswersPoints: $5)
}

