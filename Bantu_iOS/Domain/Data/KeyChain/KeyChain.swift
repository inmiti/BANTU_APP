//
//  KeyChain.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 21/4/24.
//

import Foundation
import KeychainSwift

protocol KeyChainProtocol {
    func save(token: String)
    func getToken() -> String?
    func deleteToken(token: String)
}

final class KeyChain: KeyChainProtocol {
    
    private let keychain = KeychainSwift()
    static let shared = KeyChain()

    private enum Key {
        static let token = "KEY_KEYCHAIN_TOKEN"
    }

    func save(token: String) {
        keychain.set(token, forKey: Key.token)
    }

    func getToken() -> String? {
        keychain.get(Key.token)
    }
    func deleteToken(token: String) {
        keychain.delete(Key.token)
    }
}
