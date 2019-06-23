//
//  PasswordProtocol.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 16/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public protocol Password {
    func generate(length: Int?) throws -> String
    func checkPasswordLength(length: Int) throws
    var min: Int? {set get}
    var max: Int? {set get}
    init()
}
