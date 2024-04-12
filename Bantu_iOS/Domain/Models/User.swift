//
//  User.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import Foundation
struct User: Codable {
    let first_name: String?
    let last_name1: String?
    let last_name2: String?
    let country: Country?
    let province: Province?
    let city: String?
    let postal_code: Int?
    let avatar: String?
    let email: String?
    let password: String?
    
}
