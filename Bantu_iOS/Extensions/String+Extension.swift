//
//  String+Extension.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 24/4/24.
//

import Foundation
extension String {
    var securePath: String {
        self.replacingOccurrences(of: "http", with: "https")
    }
}
