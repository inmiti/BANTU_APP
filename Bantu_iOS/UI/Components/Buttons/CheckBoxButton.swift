//
//  CheckBoxButton.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import SwiftUI

struct CheckBoxButton: View {
    @Binding var isSelected: Bool
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }, label: {
            Image(systemName: isSelected ? "checkmark.square.fill" : "checkmark.square")
                .foregroundColor(Color.bantu_orange)
        })
    }
}

#Preview {
    CheckBoxButton(isSelected: .constant(false))
}

