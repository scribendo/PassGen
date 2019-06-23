//
//  PasswordExtension.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 16/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public extension Password {

    init (config: PasswordConfig? = nil) throws {
        
        self.init()

        self.min = config!.min
        
        self.max = config!.max
        
        if (self.min!<DefaultValues.min.rawValue) {
            throw PasswordValidationError.minPasswordNotLongEnougth
        }
        
        if (self.max!>DefaultValues.max.rawValue) {
            throw PasswordValidationError.maxPasswordTooLong
        }

        if (self.min!>self.max!) {
            throw PasswordValidationError.minGreaterThanMax
        }
        
    }
    
    func randomize(length: Int, source: String) throws-> String {
        try self.checkPasswordLength(length: length)
        return String((0..<length).map{ _ in source.randomElement()!})
    }
    
    func checkPasswordLength(length: Int) throws {
        
        if (length<self.min!) {
            throw PasswordValidationError.passwordTooShort
        }
        
        if (length>self.max!) {
            throw PasswordValidationError.passwordTooLong
        }
    }
}

public extension String {
    func matches(_ regex: String) -> Bool {
        return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    }
}
