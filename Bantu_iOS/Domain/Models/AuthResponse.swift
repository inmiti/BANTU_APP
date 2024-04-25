//
//  AuthResponse.swift
//  Bantu_iOS
//
//  Created by Marcos on 24/4/24.
//

import Foundation


struct AuthResponse: Codable{
    let accesToken: String
    let refreshToken: String
}
