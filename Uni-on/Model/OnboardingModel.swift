//
//  OnboardingModel.swift
//  Uni-on
//
//  Created by Mikayla Kim on 21/10/23.
//

import Foundation
import SwiftUI

struct Page: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(title: "this is a sample", description: "hello", imageUrl: "onboarding1", tag: 0)
    
    static var samplePages:[Page] = [
    Page(title: "Become closer with your new friends", description: "Use our carefully curated game prompts to get to know each other better.", imageUrl: "onboarding1", tag: 0),
    Page(title: "Take our one minute survey to get assigned a persona", description: "Get matched with your most compatible persona to form real, life lasting connections", imageUrl: "onboarding2", tag: 1),
    Page(title: "What are you waiting for? Lets get started!", description: "", imageUrl: "onboarding3", tag: 2)
    ]
    
}
