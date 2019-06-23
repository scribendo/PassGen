//
//  RandomPassword.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 18/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public class PassGen {
    
    private var password:Password
    
    public func update(passwordType: Password) {
        self.password = passwordType
    }
    
    public init (passwordType: Password) {
        self.password = passwordType
    }
    
    public func generate(length: Int? = nil) throws -> Any{
        return try self.password.generate(length: length)
    }
}
