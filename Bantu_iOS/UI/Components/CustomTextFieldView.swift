//
//  CustomTextFieldView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import SwiftUI

struct CustomTextFieldView: View {
    @State  var textComponent: String
    @State  var isPassword: Bool
    @State var isError: Bool
    var body: some View {
      
        VStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color.white)
                .frame(height: 62)
                .shadow(color: Color.gray, radius: 1.0, x:4, y:4)
                .overlay {
                    CustomFieldView(textComponent: $textComponent, isPassword: $isPassword)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.bantu_purple, lineWidth: 1)
                )
              
            if isError == true {
                Text("¡¡ Correo incorrecto !!")
                    .font(.system(size: 12))
                    .foregroundColor(.red)
                    .id(5)
            }
        }
    }

}
#Preview {
   
    CustomTextFieldView(textComponent: ("hola@gmail.com"), isPassword: (false), isError: true)
}

