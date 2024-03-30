//
//  CustomTextField.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import SwiftUI

struct CustomTextField: View {
    
    let titleTextField: String
    let errorMessage: String
    let placeHolder: String
    @Binding var textFielText: String
  
    var body: some View {
       
        VStack(alignment: .leading) {
            Text(titleTextField)
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading) // Alinea a la izquierda
            
            TextField(placeHolder, text: $textFielText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 360, height: 62)
                .keyboardType(.emailAddress)
                .padding()
                                       .background(Color.white)
                                       .foregroundColor(.blue)
                                       .cornerRadius(20)
                                       .shadow(radius: 10.0, x:40, y:20)
                                       .textInputAutocapitalization(.never)
                                       .autocorrectionDisabled()
                                       .opacity(0.8)
                                       .id(1) //for testing
                                   
            
            Text(errorMessage)
                .font(.system(size: 12))
                .foregroundColor(.red)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding([.leading, .trailing], 20)
    


       
    }
}

#Preview {
    CustomTextField(titleTextField: "Introduce email", errorMessage: "email incorrecto", placeHolder: "Email", textFielText: .constant("test"))
}

