//
//  RegistrationViewModel.swift
//  Bantu_iOS
//
//  Created by ibautista on 6/4/24.
//

import Foundation

@MainActor
final class RegistrationViewModel: ObservableObject {
    
//    let networkResponse = NetworkResponse.shared
    // MARK: - Properties -
    @Published var userName = "userTest"
    @Published var email = "test@email.es" {
        didSet {
            showErrorEmail = !validateEmail()
        }
    }
    @Published var password = "password" {
        didSet {
            showErrorPassword = invalidatePassword()
        }
    }
    //TODO: Incluir campo profesional para crear datos de profesional. Si marca es professional crear el campo con un id y el resto de valores vacíos. 
    @Published var professional: String = ""
    
    @Published var showErrorEmail = false
    @Published var showErrorPassword = false
    @Published var showErrorRegister = false
    @Published var loading = false
    
    @Published var user: User = User()
    
    private var useCase: UseCaseProtocol
    
    init(useCase: UseCaseProtocol = UseCaseFake()) {
        self.useCase = useCase
    }
    
    // MARK: - Functions -
    func convertProfesionalToBool(professional: String) -> Bool {
        professional == "Profesional" ? true : false
    }
    
    func validateFields() -> Bool {
        validateEmail() && !invalidatePassword()
    }
    
   func validateEmail() -> Bool {
       email.contains("@") && email.contains(".")
    }
    
    func invalidatePassword() -> Bool {
         password.count < 6
    }
    
//   func registerUser() async {
    func registerUser(completion: () -> ()) async {
        loading = true
        let task = Task(priority: .utility) {
            return try await useCase.registerUser(user: User(name: userName, email: email, password: password))
        }
        switch await task.result {
        case .success(let response):
            user = response
            print("Usuario registrado correctamente: \(user)")
            completion()
            
        case .failure(let error as NetworkErrors):
            print("Error en register: \(error)")
            showErrorRegister = true
        case .failure(_):
            showErrorRegister = true
        }
        loading = false
    }
//    }
}
