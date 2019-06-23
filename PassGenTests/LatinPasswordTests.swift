//
//  LatinPasswordTests.swift
//  PassGenTests
//
//  Created by Alessandro Pindinelli on 20/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import XCTest

@testable import PassGen

class LatinPasswordTests: XCTestCase {
    
    var password: LatinPassword!
    
    override func setUp() {
        super.setUp()
        password = LatinPassword()
    }
    
    override func tearDown() {
        super.tearDown()
        password = nil
    }
    
    func testGenerate() {
        XCTAssertNoThrow(try LatinPassword().generate())
    }
    
    func testRegexMatch() {
        XCTAssertTrue("abcDefgaHa".matches(RegeEx.latin.rawValue))
    }
    
}
