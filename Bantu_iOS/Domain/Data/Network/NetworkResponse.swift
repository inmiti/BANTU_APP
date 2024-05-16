//
//  NetworkResponse.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 13/4/24.
//

import Foundation
struct VoidResponse: Codable {}

protocol NetworkResponseProtocol {
    func login(email: String, password: String) async throws -> AuthResponse
    func getProfessionals(token: String) async throws -> [Professional]
    func registerUser(user: User) async throws -> User
}

final class NetworkResponse: NetworkResponseProtocol {
    static let shared = NetworkResponse()
    
    func login(email: String, password: String) async throws -> AuthResponse {
        try await checkResponse(request: .request(networkRequest: .login(email: email, password: password)), type: AuthResponse.self)
    }
    
//    func mockedLogin(email: String, password: String) throws -> AuthResponse {
//           if(email == "mocked" && password == "mocked"){
//               return AuthResponse(accesToken: "asdasdasd", refreshToken: "dasdasd")
//           }else{
//               throw NetworkErrors.general
//           }
//       }
    
    func registerUser(user: User) async throws -> User {
        try await checkResponse(request: .request(networkRequest: .registerUser(user: user)), type: User.self)
    }
    
    func getProfessionals(token: String) async throws -> [Professional] {
        try await checkResponse(request: .request(networkRequest: .getProfessionals(token: token)), type: [Professional].self)
    }
    
    // Método para obtener un JSON lanzando una petición asíncrona y controlando los errores
    func checkResponse<T: Codable>(request: URLRequest,
                                   type: T.Type,
                                   decoder: JSONDecoder = JSONDecoder()) async throws -> T {
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse else { throw NetworkErrors.nonHTTP }
            
            switch response.statusCode {
            case 200...300:
                print("✅ \(request.httpMethod ?? "") (\(response.statusCode)): \(request.url!)")
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                print("🧠 Data: ", json ?? "No data")
                
                if data.isEmpty {
                    return VoidResponse() as! T
                }
                
                do {
                    return try decoder.decode(T.self, from: data)
                } catch {
                    throw NetworkErrors.json
                }
            case 400...1000:
                print("❌ \(request.httpMethod ?? "") (\(response.statusCode)): \(request.url!)")
                let dec = JSONDecoder()
                if let APIErrorCodeMessage = try? dec.decode(APIErrorCodeMessage.self, from: data) {
                    throw APIErrorCodeMessage
                } else {
                    throw NetworkErrors.status(response.statusCode)
                }
                
            default:
                print("❌ \(request.httpMethod ?? "") (\(response.statusCode)): \(request.url!)")
                throw NetworkErrors.general
            }
        } catch let error as NetworkErrors {
            throw error
        } catch {
            throw NetworkErrors.general
        }
    }
}

// Clase para mockear y tests.
final class NetworkResponseFake: NetworkResponseProtocol {
    
    func login(email: String, password: String) async throws -> AuthResponse {
        if(email == "test@email.es" && password == "password"){
            return AuthResponse(accesToken: "asdasdasd", refreshToken: "dasdasd")
        }else{
            throw NetworkErrors.general
        }
    }
    
    func registerUser(user: User) async throws -> User {
        if(user.name == "userTest" && user.email == "test@email.es" && user.password == "password") {
            return user
        } else {
            throw NetworkErrors.general
        }
    }
    
    func getProfessionals(token: String) async throws -> [Professional] {
        if token == "asdasdasd" {
            return ProfessionalFake().responseProfessional
        } else{
            throw NetworkErrors.general
        }
    }
}
