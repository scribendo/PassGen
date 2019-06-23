//
//  Hexadecimal.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 17/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public class HexadecimalPassword: Password {
    
    public var min: Int?
    
    public var max: Int?
    
    var config: PasswordConfig?
    
    private var password: String = ""
    
    public func generate(length: Int?=nil) throws -> String {
        
        let _length = length ?? self.min!
        
        while (!password.matches(RegeEx.hexDecimal.rawValue)) {
            password = try randomize(length: _length, source: Elements.hexadecimals.rawValue)
        }
        
        return String(password)
    }
    
    required public init(){
        self.min = PasswordConfig().min
        self.max = PasswordConfig().max
    }
    
}
