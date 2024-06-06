//
//  ModelsTest.swift
//  Bantu_iOSTests
//
//  Created by ibautista on 24/4/24.
//

import XCTest
@testable import Bantu_iOS

final class ModelsTest: XCTestCase {

    func testModelProfessional() throws {
        let modelProfessional = ProfessionalFake().responseProfessional
        XCTAssertNotNil(modelProfessional)
        XCTAssertNotEqual(modelProfessional.first?.id, 2)
        XCTAssertEqual(modelProfessional.count, 5)
    }
    func testModelUser() throws {
        let modelUser = UserFake().responseUser
        XCTAssertNotNil(modelUser)
        XCTAssertEqual(modelUser.first?.name, "TestUsuario")
        XCTAssertEqual(modelUser.count, 3)
    }
}
