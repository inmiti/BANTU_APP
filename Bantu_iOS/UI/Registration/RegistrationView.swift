//
//  RegistrationView.swift
//  Bantu_iOS
//
//  Created by ibautista on 6/4/24.
//


import SwiftUI

enum TypeProfessional: String, CaseIterable {
    case professional = "Profesional"
    case noProfessional = "No Profesional"
}

struct RegistrationView: View {
    @State private var selectedType: TypeProfessional = .professional
    @State private var isPickerVisible = false
    @StateObject var viewModel = RegistrationViewModel()
    @Binding var state: ViewState
    let options = ["Si", "No"]
    var body: some View {
        ZStack{
            Image(decorative:"")
                .resizable()
                .background(Color("backgroundBantu"))
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing:11){
                Image(decorative: "Icon2")
                    .resizable()
                    .frame(width:80, height: 80)
                Text("Register")
                    .font(.system(size: 28))
                    .bold()
                
                Text("Create your account")
                    .font(.system(size: 15))
                    .padding(.bottom, 24)
                
                
                VStack(alignment: .leading, spacing: 20){
                    CustomTextFieldView2(
                        textComponent: $viewModel.nickName,
                        isError: .constant(false),
                        fieldType: .username
                    )
                    
                    CustomTextFieldView2(
                        textComponent: $viewModel.email,
                        isError: .constant(false),
                        fieldType: .email
                    )
                    
                    CustomTextFieldView2(
                        textComponent: $viewModel.password,
                        isError: .constant(false),
                        fieldType: .password
                    )
                    
                    CustomTextFieldView2(
                        textComponent: $viewModel.password,
                        isError: .constant(false),
                        fieldType: .dropdown(options: options)
                    )
                    
                    MainButton(textButton: "Sign in") {
                        //                        Task {
                        //                            await viewModel.registerUser {
                        //                                state = .login
                        //                            }
                        //                        }
                    }
                    .padding([.leading, .trailing], 35)
                }
            }
            .padding(.horizontal, 35)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(state: .constant(.register))
    }
}

