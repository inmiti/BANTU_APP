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
    var token: String = ""
    
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
            return try await networkResponse.login(email: email, password: password)
        }
        switch await task.result {
        case .success(let response):
            token = response.accesToken ?? ""
            print(token)
            onLoginResponse()
            completion()
        case .failure(let error as NetworkErrors):
            showErrorLogin = true
        case .failure(_):
            showErrorLogin = true
        }
        loading = false
    }
    
    private func onLoginResponse() {
        KeyChain.shared.save(token: token)
     }
    
}
