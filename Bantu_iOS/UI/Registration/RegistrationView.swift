//
//  RegistrationView.swift
//  Bantu_iOS
//
//  Created by ibautista on 6/4/24.
//


import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    
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
                        textComponent: viewModel.username,
                        isError: false,
                        fieldType: .username)
                    
                    CustomTextFieldView2(
                        textComponent: viewModel.email,
                        isError: false,
                        fieldType: .email
                    )
                    
                    CustomTextFieldView2(
                        textComponent: viewModel.country,
                        isError: false,
                        fieldType: .country
                
                        )
                    CustomTextFieldView2(
                        textComponent: viewModel.province,
                        isError: false,
                        fieldType: .province
                
                        )
                    CustomTextFieldView2(
                        textComponent: viewModel.clientOrCoach,
                        isError: false,
                        fieldType: .clientOrCoach
                
                        )
                    
                    MainButton(textButton: "Sign in") {
                        //TODO Accion
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
        RegistrationView()
    }
}

