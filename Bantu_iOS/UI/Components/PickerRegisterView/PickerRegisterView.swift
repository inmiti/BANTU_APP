//
//  PickerRegisterView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 21/4/24.
//

import SwiftUI
struct PickerRegisterView: View {
    @Binding var textComponent: String
    @Binding var isError: Bool
    @State private var selection: String = ""
    let fieldType: FieldType
    
    var body: some View {
        VStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color.white)
                .frame(height: 62)
                .shadow(color: Color.gray, radius: 1.0, x:4, y:4)
                .overlay {
                    CustomFieldView2(type: fieldType, text: $textComponent)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.bantu_pink, lineWidth: 1)
                )
            
            if isError {
                Text(" Ha ocurrido un error ")
                    .font(.system(size: 12))
                    .foregroundColor(.red)
                    .id(5)
            }
        }
    }
}

//#Preview {
//    PickerRegisterView(textComponent: .constant("¿Eres profesional"), isError: .constant(true), fieldType: .dropdown(options: ["Si", "No"]))
//}

struct PickerRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        PickerRegisterView(
            textComponent: .constant("¿Eres profesional"),
            isError: .constant(true),
            fieldType: .dropdown(options: ["Si", "No"]))
    }
}
