//
//  PassGenTests.swift
//  PassGenTests
//
//  Created by Alessandro Pindinelli on 16/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import XCTest

@testable import PassGen

class PassGenTests: XCTestCase {

    var password: PassGen!
    var passwordType: Password!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGenerate() {
        XCTAssertNoThrow(try PassGen(passwordType: StrongPassword()).generate())
    }
    
    func testUpdate() {
       let randomPassword = PassGen(passwordType: StrongPassword())
        randomPassword.update(passwordType: DigitPassword())
        XCTAssertNoThrow(try randomPassword.generate())
    }

    func testGenerationWithConfigParams() throws {
        var config = PasswordConfig()
        config.min = 12
        config.max = 13
        let strong = try StrongPassword(config: config)
        XCTAssertNoThrow(try PassGen(passwordType: strong).generate())
    }
}
