//
//  Element.swift
//  PassGen
//
//  Created by Alessandro Pindinelli on 17/06/2019.
//  Copyright © 2019 Alessandro Pindinelli. All rights reserved.
//

import Foundation

enum Element: String {
    case letterLowerCase = "abcdefghijklmnopqrstuvwxyz"
    case letterUpperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    case digits = "0123456789"
    case symbols = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
    case hexadecimals = "0123456789ABCDEF"
}
