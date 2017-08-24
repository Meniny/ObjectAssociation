//
//  Sample.swift
//  Sample
//
//  Created by Meniny on 2017-08-21.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import Foundation
import ObjectAssociation

extension NSObject {
    
    private static let association = ObjectAssociation<String>()
    // Same as:
    //  private static let association = ObjectAssociation<String>(policy: .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    
    public var uniqueIdentifier: String? {
        get {
            return NSObject.association[self]
        }
        set {
            NSObject.association[self] = newValue
        }
    }
}
