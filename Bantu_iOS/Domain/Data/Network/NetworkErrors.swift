//
//  NetworkErrors.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 13/4/24.
//

import Foundation


enum NetworkErrors: Error {
    case general
    case json
    case nonHTTP
    case status(Int)
    case invalidData
    
    var description: String {
        switch self {
        case .general:
            return "Se ha producido un error"
        case .json:
            return "Error al extraer el Json"
        case .nonHTTP:
            return "Error en la url"
        case .status(let int):
            return "Error respuesta  \(int)"
        case .invalidData:
            return "Datos erroneos"
        }
    }
}


struct APIErrorCodeMessage: LocalizedError, Codable {
    var reason: String?
}
