//
//  NetworkResponse.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 13/4/24.
//

import Foundation
struct VoidResponse: Codable {}

final class NetworkResponse {
    static let shared = NetworkResponse()
    func login(email: String, password: String) async throws -> AuthResponse {
        try await checkResponse(request: .request(networkRequest: .login(email: email, password: password)), type: AuthResponse.self)
    }
    
    func registerUser(user: User) async throws -> VoidResponse{
        try await checkResponse(request: .request(networkRequest: .registerUser(user: user)), type: VoidResponse.self)
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


