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
//    @State private var selection: String = ""
    @State private var isExpanded: Bool = false
    @State private var selectedOption: String = "¿Eres profesional del bienestar?"
    @State private var options: [String] = []
    
    var body: some View {
        switch type {
        case .email:
            return AnyView(
                commonTextField("Your email", imageName: "envelope")
            )
        case .password:
            return AnyView(
                SecureField("Your password", text: $text)
                    .padding(.leading, 54)
                    .overlay(
                        commonImageOverlay("lock.rectangle")
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
                
                Menu(content: {
                    ForEach(options, id: \.self) { option in
                        Button(option) {
                            selectedOption = option
                        }}}, label: {
//                    Label(selectedOption, systemImage: "chevron.down")
                            HStack {
                                Image(systemName: "person.text.rectangle")
                                    .foregroundColor(.gray.opacity(0.4))
                                Text(selectedOption)
                                    .padding(.leading, 8)
                                    .foregroundColor(selectedOption == "¿Eres profesional del bienestar?" ? .gray.opacity(0.4) : .black)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.gray.opacity(0.4))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                })
            )
        }
    }
                
//                VStack {
//
//                    Picker(selection: $selection, label: Text("¿Eres profesional?")) {
//                        ForEach(options, id: \.self) { option in
//                            Text(option).tag(option)
//                                .foregroundColor(.gray)
//                        }
//                    }
//                    .pickerStyle(MenuPickerStyle())
//                .padding(.leading, 40)
//                }
//            )
//        }
//    }
    
    func commonTextField(_ placeholder: String, imageName: String) -> some View {
        TextField(placeholder, text: $text)
            .padding(.leading, 54)
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
                .foregroundColor(.gray.opacity(0.4))
                .frame(width: 20, height: 20)
                .padding()
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
            type:.dropdown(options: ["Profesional", "Usuario"]), text: .constant("¿Eres profesional del bienestar?"))
    }
}
