//
//  SearchTextField.swift
//  Bantu_iOS
//
//  Created by ibautista on 23/5/24.
//

import SwiftUI

struct SearchTextField: View {
    @Binding var textComponent: String
    private let menuOptions = ["Dietista", "Nutricionista", "Entrenador personal", "Psicólogo", "Coach", "Fisioterapeuta"]
//    @State var selectedOption: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color.bantu_textFields)
                .frame(height: 62)
                .shadow(color: Color.gray.opacity(0.4), radius: 1.0, x:4, y:4)
                .overlay {
                    HStack {
                        CustomFieldView2(type: .search, text: $textComponent)
                    
                        Menu {
                            ForEach(menuOptions, id: \.self) {option in 
                                Button(option) {
                                    textComponent = option
                                }
                            }
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .frame(width: 55)
                                .foregroundColor(.black)
                        }
                    }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.bantu_orange, lineWidth: 1)
                )
        }
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField(textComponent: .constant("Eva Nasarre")
                        )
    }
}
