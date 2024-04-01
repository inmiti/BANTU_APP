//
//  CustomFieldView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import SwiftUI

struct CustomFieldView: View {
    @Binding var textComponent: String
    @Binding var isPassword: Bool
    var body: some View {
        if !isPassword {
            TextField("Your email", text: $textComponent)
                .padding(.leading, 40)
                .overlay(
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                            .padding(.leading, 10)
                        Spacer()
                    }
                )
                .background(Color.white)
                .frame(height: 62)
                .keyboardType(.emailAddress)
                .background(Color.white)
                .cornerRadius(30)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .opacity(0.8)
                .id(4)
        } else {
            SecureField("Your password", text: $textComponent)
                .padding(.leading, 40)
                .overlay(
                    HStack {
                        Image(systemName: "exclamationmark.lock")
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                            .padding(.leading, 10)
                        Spacer()
                    }
                )
                .background(Color.white)
                .frame(height: 62)
                .keyboardType(.emailAddress)
                .background(Color.white)
                .cornerRadius(30)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .opacity(0.8)
                .id(4)
        }
    }
}
//#Preview {
//    CustomFieldView(textComponent: .constant("test@hotmail.com"), isPassword: .constant(true))
//}

struct CustomFieldView_Preview: PreviewProvider {
    static var previews: some View {
        CustomFieldView(textComponent: .constant("test@hotmail.com"), isPassword: .constant(true))
    }
}
