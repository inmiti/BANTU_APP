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
    @Published var email = "" {
        didSet {
            showErrorEmail = !validateEmail()
        }
    }
    @Published var password = "" {
        didSet {
            showErrorPassword = invalidatePassword()
        }
    }
    @Published var rememberMe = false
    @Published var fieldType: FieldType = .email
    
    @Published var loading = false
    @Published var showErrorEmail = false
    @Published var showErrorPassword = false
    @Published var showErrorLogin = false
    
    
    // MARK: - Functions -
    
    func validateFields() -> Bool {
        validateEmail() && !invalidatePassword()
    }
   func validateEmail() -> Bool {
       email.contains("@") && email.contains(".")
    }
    
     func invalidatePassword() -> Bool {
         password.count < 6
    }
    
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
