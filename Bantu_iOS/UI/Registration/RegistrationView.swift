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
    @Binding var state: ViewState
    
    @State private var selectedType: TypeProfessional = .professional
//    @State private var isPickerVisible = false
    @StateObject var viewModel = RegistrationViewModel()
    private let options = ["Profesional", "Usuario"]
    
    var body: some View {
        ZStack{
            Image(decorative:"")
                .resizable()
                .background(Color("backgroundBantu"))
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing:11){
                Image(decorative: "Icon2")
                    .resizable()
                    .frame(width:60, height: 60)
                Text("Register")
                    .font(.system(size: 28))
                    .bold()
                
                Text("Create your account")
                    .font(.system(size: 15))
                    .padding(.bottom, 24)
                
                
                VStack(alignment: .leading, spacing: 20){
                    CustomTextFieldView2(
                        textComponent: $viewModel.userName,
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
                        textComponent: $viewModel.professional,
                        isError: .constant(false),
                        fieldType: .dropdown(options: options)
                    )
                    
                    MainButton(textButton: "Register") {
                        Task {
                            await viewModel.registerUser {
                                //TODO: hay que obtener el token y guardarlo
                                state = .login(loginVieModel: LoginViewModel(user: viewModel.user))
                            }
                        }
                         
                    }
                    .padding([.leading, .trailing], 32)
                    .padding()
                }
            }
            .padding(.horizontal, 32)
        }
        .navigationBarItems(leading: Button(
            action: {
                state = .login(loginVieModel: LoginViewModel(user: nil))
            }, label: {
                HStack{
                    Image(systemName: "chevron.left")
                    Text("Volver")
                }
                .foregroundColor(.blue)
        }))
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(state: .constant(.register))
    }
}

