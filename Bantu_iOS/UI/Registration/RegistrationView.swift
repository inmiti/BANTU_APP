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
                    .frame(width: 150, height: 150)
                Text("Register")
                    .font(.system(size: 28))
                    .bold()
                
                Text("Create your account")
                    .font(.system(size: 15))
                    .padding(.bottom, 24)
                
                
                VStack(alignment: .leading, spacing: 20){
                    CustomTextFieldView2(
                        textComponent: viewModel.username,
                        isError: true,
                        fieldType: .username)
                    
                    CustomTextFieldView2(
                        textComponent: viewModel.email,
                        isError: true,
                        fieldType: .email
                    )
                    
                    CustomTextFieldView2(
                        textComponent: viewModel.password,
                        isError: true,
                        fieldType: .password
                
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

