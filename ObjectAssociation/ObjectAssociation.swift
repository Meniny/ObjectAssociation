//
//  ObjectAssociation.swift
//  ObjectAssociation
//
//  Created by Meniny on 2016-07-20.
//
//

import Foundation

public final class ObjectAssociation<AssociatedObjectType> {
  
  public let policy: objc_AssociationPolicy
  
  /// - Parameter policy: An association policy that will be used when linking objects.
  public init(policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) {
    self.policy = policy
  }
  
  /// Accesses associated object.
  /// - Parameter index: An object whose associated object is to be accessed.
  public subscript(index: Any) -> AssociatedObjectType? {
    get {
      return objc_getAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque()) as? AssociatedObjectType
    }
    set {
      objc_setAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque(), newValue, policy)
    }
  }
}
