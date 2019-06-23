//
//  Strong.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 17/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public class StrongPassword: Password {
    
    private var password: String = ""
    
    public var min: Int?
    
    public var max: Int?
    
    public func generate(length: Int? = nil) throws -> String {
        
        let _length = length ?? self.min!
        
        while (!password.matches(RegeEx.strong.rawValue)) {
            password = try randomize(length: _length, source:
                Elements.letterLowerCase.rawValue +
                Elements.letterUpperCase.rawValue +
                Elements.digits.rawValue +
                Elements.symbols.rawValue
            )
        }
        
        return String(password)
    }
    
    required public init(){
        self.min = PasswordConfig().min
        self.max = PasswordConfig().max
    }

}
