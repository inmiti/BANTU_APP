//
//  Chat.swift
//  Bantu_iOS
//
//  Created by ibautista on 19/6/24.
//

import Foundation

struct Chat: Codable, Identifiable {
    var id: Int
    var message: String
    var user: User
    var date: String
}
