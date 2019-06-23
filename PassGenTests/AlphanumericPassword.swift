//
//  AlphanumericPassword.swift
//  PassGenTests
//
//  Created by Alessandro Pindinelli on 21/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import XCTest

@testable import PassGen

class AlphanumericPasswordTests: XCTestCase {
    
    var password: AlphanumericPassword!
    
    override func setUp() {
        super.setUp()
        password = AlphanumericPassword()
    }
    
    override func tearDown() {
        super.tearDown()
        password = nil
    }
    
    func testGenerate() {
        XCTAssertNoThrow(try AlphanumericPassword().generate())
    }
    
    func testRegexMatch() {
        XCTAssertTrue("abcDefgaHa".matches(RegeEx.latin.rawValue))
    }
    
}
