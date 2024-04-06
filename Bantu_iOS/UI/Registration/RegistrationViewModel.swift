//
//  RegistrationViewModel.swift
//  Bantu_iOS
//
//  Created by ibautista on 6/4/24.
//

import Foundation

import Foundation

final class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
}
