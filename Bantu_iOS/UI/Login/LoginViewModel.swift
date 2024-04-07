//
//  LoginViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import Foundation
final class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var rememberMe = false
    @Published var isPassword = false
}
