//
//  HexadecimalPasswordTests.swift
//  PassGenTests
//
//  Created by Alessandro Pindinelli on 21/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import XCTest

@testable import PassGen

class HexadecimalPasswordTests: XCTestCase {
    
    var password: HexadecimalPassword!
    
    override func setUp() {
        super.setUp()
        password = HexadecimalPassword()
    }
    
    override func tearDown() {
        super.tearDown()
        password = nil
    }
    
    func testGenerate() {
        XCTAssertNoThrow(try HexadecimalPassword().generate())
    }
    
    func testRegexMatch() {
        XCTAssertTrue("A1FEEB5".matches(RegeEx.hexDecimal.rawValue))
    }
    
}
