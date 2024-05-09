//
//  User.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import Foundation

struct User: Codable {
    var id: Int?
    var name: String?
    var lastName1: String?
    var lastName2: String?
    var postalCode: String?
    var email: String?
    var city: String?
    var photo: String?
    var password: String?
    var active: Bool?

}
