//
//  OnboardingContent.swift
//  Uni-on
//
//  Created by Mikayla Kim on 22/10/23.
//

import SwiftUI

struct OnboardingContent: View {
    
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIControl.appearance()
    
    var body: some View {
        
        ZStack{
            ColorPallete.primaryLight
                .ignoresSafeArea()
            
            TabView(selection: $pageIndex) {
                
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        PageView(page: page)
                        Spacer()
                        if page == pages.last {
                            
                            Button("Dive in", systemImage: "play.fill", action: goToZero)
                                .padding()
                                .font(.body)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 12).foregroundColor(.black))
                                .padding()
                            Spacer()
                            
                            Text("Skip for now")
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .underline()
                            Spacer(minLength: 20)
                        }
                    
                        
                        Spacer(minLength: 80)
                        
                    }
                    .tag(page.tag)
                }
                
                
            }
            
            
        }.navigationBarBackButtonHidden(true)
        
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        
        
    }
    func incrementPage() {
        pageIndex += 1
        
        
    }
    func goToZero() {
        pageIndex = 0
        
    }
    
    
    
}





#Preview {
    OnboardingContent()
}


