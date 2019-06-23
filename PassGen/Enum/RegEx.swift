//
//  RegEx.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 17/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

public enum RegeEx: String {
    case hexDecimal = "^(?=.*[A-F])[A-F0-9]{2,}$"
    case latin = "^(?=.*[a-z])(?=.*[A-Z])[a-zA-Z]{2,}$"
    case alphanumeric = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d.*)[a-zA-Z0-9]{3,}$"
    case strong = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d.*)(?=.*\\W.*)[a-zA-Z0-9\\S]{4,}$"
}
