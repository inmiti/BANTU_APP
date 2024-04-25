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
        .buttonStyle(.plain)
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .background(Color.bantu_orange)
        .cornerRadius(30)
      
    }
}

struct  MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(textButton: "Sign in", action: {})
    }
}

//
//#Preview {
//        MainButton(textButton: "Sign in", action: {})
//    }

