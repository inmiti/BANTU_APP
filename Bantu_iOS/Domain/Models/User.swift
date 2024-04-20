//
//  User.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import Foundation

struct User: Codable {
    let nickName: String?
    let email: String?
    let password: String?
    let professional: Bool?
}

struct AuthResponse: Codable {
    let accesToken: String?
    let refreshToken: String?
}
