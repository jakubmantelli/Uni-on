//
//  AnswerOptionView.swift
//  Uni-on
//
//  Created by Mohammad Solki on 29/10/23.
//

import SwiftUI

struct AnswerOptionView: View {
    var optionText: String
    @Binding var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(isSelected ? ColorPallete.primaryLight : ColorPallete.primaryLight)
                    //.padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                    .frame(maxHeight: 70, alignment: .center)
                HStack {
                    Text(optionText)
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
//                    Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
//                        .foregroundColor(isSelected ? ColorPallete.primary : .gray)
                }
                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
            .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}


#Preview {
    AnswerOptionView(optionText: "Option 1 \n what is this", isSelected: .constant(false), action: {})
}
