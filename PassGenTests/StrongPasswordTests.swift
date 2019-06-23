//
//  StrongPasswordTests.swift
//  PassGenTests
//
//  Created by Alessandro Pindinelli on 21/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import XCTest

@testable import PassGen

class StrongPasswordTests: XCTestCase {

    var password: StrongPassword!
    
    override func setUp() {
        super.setUp()
        password = StrongPassword()
    }
    
    override func tearDown() {
        super.tearDown()
        password = nil
    }
    
    func testGeneratePasswordWithCustomParam() throws{
        var config = PasswordConfig()
        config.min = 10
        config.max = 12
        let strong = try StrongPassword(config: config)
        let p = try PassGen(passwordType: strong).generate()
        XCTAssertEqual((p as! String).count, config.min)
    }
    
    
    func testGenerate() {
        XCTAssertNoThrow(try StrongPassword().generate())
    }
    
    func testRegexMatch() {
        XCTAssertTrue("a3&Vs!a890k".matches(RegeEx.strong.rawValue))
    }
}
