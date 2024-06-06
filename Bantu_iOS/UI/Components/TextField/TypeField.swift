//
//  TypeField.swift
//  Bantu_iOS
//
//  Created by ibautista on 11/4/24.
//

import Foundation

enum FieldType {
    case email
    case password
    case username
    case country
    case province
    case dropdown(options: [String])
    case search
   
    
}

