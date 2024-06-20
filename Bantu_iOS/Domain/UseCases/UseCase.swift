//
//  UseCase.swift
//  Bantu_iOS
//
//  Created by ibautista on 9/5/24.
//

import Foundation

protocol UseCaseProtocol {
    func login(email: String, password: String) async throws -> AuthResponse
    func registerUser(user: User) async throws -> User
    func getProfessionals(token: String) async throws -> [User]
    func getSocialPublications(token: String) async throws -> [Social]
    func getChats(token: String) async throws -> [Chat]
}

//Real
final class UseCaseReal: UseCaseProtocol {
    private var network: NetworkResponseProtocol
    
    init(network: NetworkResponseProtocol = NetworkResponse()) {
        self.network = network
    }
    
    func login(email: String, password: String) async throws -> AuthResponse {
        return try await network.login(email: email, password: password)
    }
    
    func registerUser(user: User) async throws -> User {
        return try await network.registerUser(user: user)
    }
    
    func getProfessionals(token: String) async throws -> [User] {
        return try await network.getProfessionals(token: token)
    }
    
    func getSocialPublications(token: String) async throws -> [Social] {
        return try await network.getSocialPublications(token: token)
    }
    
    func getChats(token: String) async throws -> [Chat] {
        return try await network.getChats(token: token)
    }
}

//Mock Success
final class UseCaseFake: UseCaseProtocol {
    private var networkFake: NetworkResponseProtocol
    
    init(network: NetworkResponseProtocol = NetworkResponseFake()) {
        self.networkFake = network
    }
    
    func login(email: String, password: String) async throws -> AuthResponse {
        return try await networkFake.login(email: email, password: password)
    }
    
    func registerUser(user: User) async throws -> User {
        return try await networkFake.registerUser(user: user)
    }
    
    func getProfessionals(token: String) async throws -> [User] {
        return try await networkFake.getProfessionals(token: token)
    }
    
    func getSocialPublications(token: String) async throws -> [Social] {
        return try await networkFake.getSocialPublications(token: token)
    }
    
    func getChats(token: String) async throws -> [Chat] {
        return try await networkFake.getChats(token: token)
    }
}

// Mock Failure
final class UseCaseFakeFailure: UseCaseProtocol {
    private var networkFake: NetworkResponseProtocol
    
    // Inicializador que permite inyectar una instancia de NetworkResponseFakeFailure
    init(network: NetworkResponseProtocol = NetworkResponseFake()) {
        self.networkFake = network
    }
    
    func login(email: String, password: String) async throws -> AuthResponse {
        // Simular un fallo al iniciar sesión
        throw NetworkErrors.general
    }
    func registerUser(user: User) async throws -> User {
        throw NetworkErrors.general
    }
    
    func getProfessionals(token: String) async throws -> [User] {
        // Simular un fallo al obtener profesionales
        throw NetworkErrors.general
    }
    
    func getSocialPublications(token: String) async throws -> [Social] {
        throw NetworkErrors.general
    }
    
    func getChats(token: String) async throws -> [Chat] {
        throw NetworkErrors.general
    }
}
