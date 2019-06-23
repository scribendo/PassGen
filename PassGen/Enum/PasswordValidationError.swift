//
//  PasswordValidationError.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 17/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public enum PasswordValidationError: String, Error {
    case passwordTooShort = "Password too short"
    case passwordTooLong = "Password too long"
    case minLengthNil = "Minimum length cannot be nil"
    case minPasswordNotLongEnougth = "Minimum password length is not long enough"
    case maxPasswordTooLong = "Maximum password length is too long"
    case minGreaterThanMax = "Minimum password length cannot be greater than maximum password length"
}
