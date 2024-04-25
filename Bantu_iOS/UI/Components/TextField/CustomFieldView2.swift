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
    @State private var selection: String = ""
    
    var body: some View {
        switch type {
        case .email:
            return AnyView(
                commonTextField("Your email", imageName: "envelope")
            )
        case .password:
            return AnyView(
                SecureField("Your password", text: $text)
                    .padding(.leading, 40)
                    .overlay(
                        commonImageOverlay("exclamationmark.lock")
                    )
            )
        case .username:
            return AnyView(
                commonTextField("Your username", imageName: "person")
            )
            
        case .country:
            return AnyView(
                commonTextField("Your country", imageName: "mappin.and.ellipse.circle")
            )
        case .province:
            return AnyView(
                commonTextField("Your province", imageName: "mappin.and.ellipse.circle")
            )
        case .dropdown(let options):
            return AnyView(
                Picker(selection: $selection, label: Text("")) {
                    ForEach(options, id: \.self) { option in
                        Text(option).tag(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.leading, 40)
            )
        }
    }
    
    func commonTextField(_ placeholder: String, imageName: String) -> some View {
        TextField(placeholder, text: $text)
            .padding(.leading, 40)
            .overlay(
                commonImageOverlay(imageName)
            )
            .background(Color.white)
            .frame(height: 62)
            .keyboardType(.emailAddress)
            .background(Color.white)
            .cornerRadius(30)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .opacity(0.8)
    }
    
    func commonImageOverlay(_ imageName: String) -> some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.gray)
                .frame(width: 20, height: 20)
                .padding(.leading, 10)
            Spacer()
        }
    }
}

//#Preview {
//    CustomFieldView2(
//        type:.dropdown(options: ["Si", "No"]),
//        text: .constant("¿Eres profesional? "))
//    }

struct CustomFieldView2_Previews: PreviewProvider {
    static var previews: some View {
        CustomFieldView2(
            type:.dropdown(options: ["Si", "No"]),
            text: .constant("¿Eres profesional? "))
    }
}
