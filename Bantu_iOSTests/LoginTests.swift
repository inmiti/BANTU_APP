//
//  LoginTests.swift
//  Bantu_iOSTests
//
//  Created by Marcos on 24/4/24.
//

import XCTest
@testable import Bantu_iOS


final class LoginTests: XCTestCase {
    
    func testLoginWithExistingUserAndPassword() async {
        do {
            let auth = try await NetworkResponseFake().login(email: "test@email.es", password: "password")
            XCTAssertNotNil(auth.accesToken)
            XCTAssertNotNil(auth.refreshToken)
        }catch {
            fatalError("Failed")
        }
    }
    
    func testLoginWithNotUserAndPassword() async {
        do {
            _ = try await NetworkResponseFake().login(email: "mocke", password: "mocke")
            XCTFail("No se lanzó ningún error, se esperaba uno.")
        } catch {
            // El error fue lanzado, la prueba es exitosa
            XCTAssertTrue(true)
        }
    }


//    func testLoginWithNotUserAndPassword(){
//        XCTAssertThrowsError(try NetworkResponse().mockedLogin(email: "mocke", password: "mocke")){error in
//            XCTAssertTrue(error.localizedDescription == error.localizedDescription)
//        }
//    }
}

