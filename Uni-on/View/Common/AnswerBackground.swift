//
//  AnswerBackground.swift
//  Uni-on
//
//  Created by Mohammad Solki on 29/10/23.
//

import SwiftUI

struct AnswerBackground: View {
    @Binding var checked: Bool

    var body: some View {
        ZStack {
            Color(.white)
                //.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                .frame(maxHeight: 75, alignment: .center)
                .onTapGesture {
                    self.checked.toggle()
                }
            if checked {
                RoundedRectangle(cornerRadius: 10)
                    .fill(ColorPallete.primaryLight)
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                    .frame(maxHeight: 75, alignment: .center)

            }
        }
    }
}

//#Preview {
//    AnswerBackground(checked: <#Binding<Bool>#>)
//}
