//
//  Professional_Type.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import Foundation
struct ProfessionalType: Codable {
    let id: Int?
    let type: String?
    
    var coachType: CoachType? {
        CoachType(rawValue: id ?? 0)
    }

}

enum CoachType: Int {
    case entrenador = 1
    case nutricionista
    case dietista
    case fisioterapeuta
}
