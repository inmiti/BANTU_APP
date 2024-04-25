//
//  LoginTests.swift
//  Bantu_iOSTests
//
//  Created by Marcos on 24/4/24.
//

import XCTest
@testable import Bantu_iOS


final class LoginTests: XCTestCase {
    
    func testLoginWithExistingUserAndPassword(){
        do {
           let auth = try NetworkResponse().mockedLogin(email: "mocked", password: "mocked")
            XCTAssertNotNil(auth.accesToken)
            XCTAssertNotNil(auth.refreshToken)
        }catch {
            fatalError("Failed")
        }
    }
    
    func testLoginWithNotUserAndPassword(){
        XCTAssertThrowsError(try NetworkResponse().mockedLogin(email: "mocke", password: "mocke")){error in
            XCTAssertTrue(error.localizedDescription == error.localizedDescription)
        }
    }
}

