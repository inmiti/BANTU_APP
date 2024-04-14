//
//  LoginViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import Foundation

@MainActor
final class LoginViewModel: ObservableObject {

    let networkResponse = NetworkResponse.shared
    // MARK: - Properties -
    @Published var email = ""
    @Published var password = ""
    @Published var rememberMe = false
    @Published var fieldType: FieldType = .email
    
    @Published var loading = false
    @Published var showErrorEmail = false
    @Published var showErrorPassword = false
    @Published var showErrorLogin = false
    
    
    // MARK: - Functions -
    
    func validateFields() -> Bool {
        return true
    }
    
    func validateEmail() -> Bool {
        if email.contains("@"), email.contains(".") {
            return true
        } else {
            showErrorEmail = true
            return false
            // Email incorrecto
        }
    }
    
    func validatePassword() -> Bool {
        if password.count > 4 {
            return true
        } else {
            showErrorPassword = true
            return false
            // Contraseña debe tener más de 4 caracteres
        }
    }
    
    /// Método para comprobar si el usuario existe y obtener sus datos
    func login(completion: () -> ()) async {
         showErrorLogin = false
        loading = true
        let task = Task(priority: .utility) {
            return try await networkResponse.login(email: "test@email.es", password: "password")
        }
        switch await task.result {
        case .success(let response):
            completion()
        case .failure(let error as NetworkErrors):
            showErrorLogin = true
        case .failure(_):
            showErrorLogin = true
        }
        loading = false
    }
    
}
