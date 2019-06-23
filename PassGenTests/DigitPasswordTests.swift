//
//  DigitPasswordTests.swift
//  PassGenTests
//
//  Created by Alessandro Pindinelli on 18/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import XCTest

@testable import PassGen

class DigitPasswordTests: XCTestCase {
    
    var config: PasswordConfig!
    var password: DigitPassword!
    
    override func setUp() {
        super.setUp()
        password = DigitPassword()
        config = PasswordConfig()
    }
    
    override func tearDown() {
        super.tearDown()
        password = nil
        config = nil
    }
    
    func testGeneratePasswordWithConfig() {
        self.config.min = 5
        self.config.max = 10
        XCTAssertNoThrow(try DigitPassword(config: config).generate())
    }
    
    func testMinPasswordParamNotLongEnougth() {
        self.config.min = 3
        XCTAssertThrowsError(try DigitPassword(config: config).generate(), "Minimum password length is not long enough") {
            (error) in
            XCTAssertEqual((error as? PasswordValidationError)!, PasswordValidationError.minPasswordNotLongEnougth)
        }
    }
    
    func testMinPasswordParamGreaterThanMaxException() {
        self.config.max = 9
        self.config.min = 10
        XCTAssertThrowsError(try DigitPassword(config: config).generate(), "Minimum password length cannot be greater than maximum password length") {
            (error) in
            XCTAssertEqual((error as? PasswordValidationError)!, PasswordValidationError.minGreaterThanMax)
        }
    }
    
    func testMaxPasswordParamTooLongException() {
        self.config.max = 100
        XCTAssertThrowsError(try DigitPassword(config: config).generate(), "Maximum password length is too long") {
            (error) in
            XCTAssertEqual((error as? PasswordValidationError)!, PasswordValidationError.maxPasswordTooLong)
        }
    }
    
    func testDefaultPasswordLength() throws {
        let password = try self.password.generate()
        XCTAssertTrue(password.count==self.config.min)
    }
    
    func testPasswordLength() throws {
        let length = 10
        let password = try self.password.generate(length: length)
        XCTAssertTrue(password.count==length)
    }
    
    func testPasswordTooLongException() throws {
        let length = 70
        XCTAssertThrowsError(try self.password.generate(length: length), "Password too long") {
            (error) in
            XCTAssertEqual((error as? PasswordValidationError)!, PasswordValidationError.passwordTooLong)
        }
    }
    
    func testPasswordTooShortException() throws {
        let length = 2
        XCTAssertThrowsError(try self.password.generate(length: length), "Password too short") {
            (error) in
            XCTAssertEqual((error as? PasswordValidationError)!, PasswordValidationError.passwordTooShort)
        }
    }
    
}

