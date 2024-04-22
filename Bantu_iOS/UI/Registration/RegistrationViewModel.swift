//
//  RegistrationViewModel.swift
//  Bantu_iOS
//
//  Created by ibautista on 6/4/24.
//

import Foundation

@MainActor
final class RegistrationViewModel: ObservableObject {
    
    let networkResponse = NetworkResponse.shared
    // MARK: - Properties -
    @Published var nickName = ""
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
    
    @Published var professional = false
    @Published var showErrorEmail = false
    @Published var showErrorPassword = false
    @Published var showErrorRegister = false
    @Published var loading = false
    
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
    
   func registerUser() async {
        func registerUser(completion: () -> ()) async {
            loading = true
            let task = Task(priority: .utility) {
//                return try await networkResponse.registerUser(user: User(nickName: nickName, email: email, password: password, professional: professional))
            }
            switch await task.result {
            case .success(let response):
                completion()
            case .failure(let error as NetworkErrors):
                showErrorRegister = true
            case .failure(_):
                showErrorRegister = true
            }
            loading = false
        }
    }
}
