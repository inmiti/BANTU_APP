//
//  Coach.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import Foundation

struct Professional: Codable {
    var id: Int?
    var name: String?
    var lastName1: String?
    var lastName2: String?
    var postalCode: String?
    var province: Province?
    var email: String?
    var city: String?
    var country: Country?
    var nickname: String?
    var photo: String?
    var password: String?
    var active: Bool?
    var creationDate: Date?
    var leavingDate: Date?
    let nickName: String?
    var professional: Bool = false
    let avatar: String?
    let nif: String?
    let telephone: Int?
    let pro_Type: Int?
    let pro_Suscription: Int?
    let description: String?
    
    var coachType: CoachType? {
        CoachType(rawValue: pro_Type ?? 0)
    }
    
}

extension Professional {
    static let coachTest = Professional(nickName: "Test", avatar: "", nif: "123456789B", telephone: 666666666, pro_Type: 1, pro_Suscription: 123, description: "Descr test")
}
enum CoachType: Int {
    case coach = 1
    case nutricionist
    case dietist
    case fisio
}
