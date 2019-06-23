//
//  DigitPassword.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 18/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public class DigitPassword: Password {
    
    var config: PasswordConfig?
    
    public var min: Int?
    
    public var max: Int?
    
    public func generate(length: Int? = nil) throws -> String {
        let _length = length ?? self.min!
        return String(try randomize(length: _length, source: Elements.digits.rawValue))
    }
    
    required public init(){
        self.min = PasswordConfig().min
        self.max = PasswordConfig().max
    }
}
