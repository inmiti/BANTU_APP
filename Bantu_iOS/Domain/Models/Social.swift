//
//  Social.swift
//  Bantu_iOS
//
//  Created by ibautista on 9/6/24.
//

import Foundation

struct Social: Codable, Identifiable {
    var id: Int?
    var professional: User
    var resource: String
    var description: String?
}
