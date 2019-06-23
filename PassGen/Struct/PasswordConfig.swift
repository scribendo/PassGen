//
//  PasswordConfig.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 16/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public struct PasswordConfig {
    
    public var min: Int
    
    public var max: Int
    
    public var _min: Int {
        set(min) {
            self.min = min
        }
        get {
            return self.min
        }
    }
    
    public var _max: Int {
        set(max) {
            self.max = max
        }
        get {
            return self.max
        }
    }
    
    public init(){
        self.min = DefaultValues.min.rawValue
        self.max = DefaultValues.max.rawValue
    }

}

