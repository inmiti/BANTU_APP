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
                
                VStack{
                    CustomTextFieldView(
                        textComponent: viewModel.username,
                        isPassword: false,
                        isError: true)
                    
                    CustomTextFieldView(
                        textComponent: viewModel.email,
                        isPassword: false,
                        isError: true)
                    
                    CustomTextFieldView(
                        textComponent: viewModel.password,
                        isPassword: true,
                        isError: true)
                    
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
