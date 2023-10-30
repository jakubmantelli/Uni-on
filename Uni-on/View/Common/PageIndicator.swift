//
//  PageIndicator.swift
//  Uni-on
//
//  Created by Mohammad Solki on 29/10/23.
//

import SwiftUI

struct PageIndicator: View {
    @Binding var currentPage: Int
    var totalPages: Int

    var body: some View {
        
        let pageRange = 0..<totalPages
       
        HStack {
            ForEach(pageRange, id: \.self) { page in
                Circle()
                    .fill(page == currentPage ? Color.blue : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
        .padding()
    }
}

#Preview {
    PageIndicator(currentPage: .constant(1), totalPages: 4)
}
