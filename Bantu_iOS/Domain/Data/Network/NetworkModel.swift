//
//  Network.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 12/4/24.
//

import Foundation

enum NetworkModel {
    case registerUser(user: User)
    case login(email: String, password: String)
    case getCoach(coach: [Coach])
   
}

extension NetworkModel {
    var bantuURL: String {
        return "https://bantubackend-dev-tnqr.2.ie-1.fl0.io" }
    var baseURL: String {
        switch self {
        case .login,
                .getCoach,
                .registerUser:
               
            return baseURL
        }
    }
    var path: String {
        switch self {
        case .login:
            return "/api/auth/signin"
        case .getCoach:
            return ""
        case .registerUser:
            return ""
       
        }
    }
}
