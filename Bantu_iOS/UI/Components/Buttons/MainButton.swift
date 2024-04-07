//
//  MainButton.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import SwiftUI

struct MainButton: View {
    let textButton: String
    let action: () -> ()
    var body: some View {
        Button(action: {
            action()
        }
               , label: {
            Text(textButton)
        })
        .buttonStyle(.bordered)
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .background(Color.bantu_purple)
        .cornerRadius(30)
      
    }
}

#Preview {
        MainButton(textButton: "Sign in", action: {})
    }

