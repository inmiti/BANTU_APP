//
//  CustomFieldView2.swift
//  Bantu_iOS
//
//  Created by ibautista on 11/4/24.
//

import SwiftUI

struct CustomFieldView2: View {
    var type: FieldType
    @Binding var text: String
    
    var body: some View {
        switch type {
        case .email:
            return AnyView(TextField("Your email", text: $text)
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
            )
            
        case .password:
            return AnyView(SecureField("Your password", text: $text)
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
            )
            
        case .username:
            return AnyView(TextField("Your username", text: $text)
                .padding(.leading, 40)
                .overlay(
                    HStack {
                        Image(systemName: "person")
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
            )
        }
    }
}


struct CustomFieldView2_Previews: PreviewProvider {
    static var previews: some View {
        CustomFieldView2(
            type:.email,
            text: .constant("test@gmail.com"))
    }
}

//#Preview {
//        CustomFieldView(textComponent:  .constant("test@hotmail.com"), isPassword: .constant(true))
//    }
//



