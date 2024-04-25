//
//  LoginViewModelTest.swift
//  Bantu_iOSTests
//
//  Created by ibautista on 24/4/24.
//

import XCTest
@testable import Bantu_iOS

@MainActor
final class LoginViewModelTest: XCTestCase {
    
    var vm: LoginViewModel!

    override func setUp() {
        super.setUp()
        vm = LoginViewModel()
    }
    
    override func tearDown() {
        vm = nil
        super.tearDown()
    }
    
    func testValidateEmail_ValidEmail() throws {
        vm.email = "test@bantu.es"
        
        let isValid = vm.validateEmail()
        XCTAssertTrue(isValid)
    }
    
    func testValidateEmail_InvalidEmail() throws {
        vm.email = "test"
        
        let isValid = vm.validateEmail()
        XCTAssertFalse(isValid)
    }
}
