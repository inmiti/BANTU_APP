//
//  KeychainTest.swift
//  Bantu_iOSTests
//
//  Created by ibautista on 24/4/24.
//

import XCTest
@testable import Bantu_iOS

final class KeychainTest: XCTestCase {
    
    private var sut: KeyChainProtocol!
    
    override func setUp() {
        super.setUp()
        sut = KeyChain()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_givenKeyChain_saveToken() throws {
        let token = "abcdef"
        sut.save(token: token)
        
        XCTAssertNotNil(token)
        XCTAssertEqual(token, "abcdef")
    }
    
    func test_givenKeyChain_loadToken() throws {
        let token = "abcdef"
        sut.save(token: token)
        let tokenLoaded = sut.getToken()
        
        XCTAssertEqual(token, tokenLoaded)
    }
    
    func test_givenKeyChain_deleteToken() throws {
        let token = "abcdef"
        sut.deleteToken(token: token)
        let tokenDeleted = sut.getToken()
        
        XCTAssertNil(tokenDeleted)
    }
}
