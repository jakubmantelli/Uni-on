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
                    .fill(isSelected ? ColorPallete.primaryLight : .clear)
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                    .frame(maxHeight: 75, alignment: .center)
                HStack {
                    Text(optionText)
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isSelected ? ColorPallete.primary : .gray)
                }
                .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
        }
    }
}


#Preview {
    AnswerOptionView(optionText: "Option 1", isSelected: .constant(false), action: {})
}
