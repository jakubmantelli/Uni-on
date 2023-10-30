//
//  RadioButton.swift
//  Uni-on
//
//  Created by Mohammad Solki on 29/10/23.
//

import SwiftUI

struct RadioButton: View {
    @Binding var checked: Bool

    var body: some View {
        ZStack {
            Image(systemName: "circle")
                .foregroundColor(.gray)
                .onTapGesture {
                    self.checked.toggle()
                }
            if checked {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(ColorPallete.primary)
            }
        }
    }
}

//#Preview {
//    RadioButton(checked: <#Binding<Bool>#>)
//}
