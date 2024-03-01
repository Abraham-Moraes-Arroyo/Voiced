//
//  VoicedTextFieldModifier.swift
//  Voiced
//
//  Created by student on 2/28/24.
//

import SwiftUI

struct VoicedTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}


