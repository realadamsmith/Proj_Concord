//
//  Utilities.swift
//  hamburger
//
//  Created by Adam Cray Smith on 9/5/20.
//  Copyright © 2020 Scitest. All rights reserved.
//

import UIKit
import Foundation

class Utilities {

    static func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
            "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with:password)
        
    }
}
