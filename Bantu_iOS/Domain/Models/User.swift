//
//  User.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import Foundation
struct User: Codable {
    let name: String?
    let lastName1: String?
    let lastName2: String?
    let country: Country?
    let province: Province?
    let city: String?
    let postal_code: Int?
    let avatar: String?
    let email: String?
    let password: String?
}

struct AuthResponse: Codable {
    let accesToken: String?
    let refreshToken: String?
}
