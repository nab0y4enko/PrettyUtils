//
//  PrettyMulticastDelegate.swift
//  PrettyUtils
//
//  Created by Oleksii Naboichenko on 6/12/20.
//  Copyright © 2020 Oleksii Naboichenko. All rights reserved.
//

import Foundation

// MARK: - PrettyMulticastDelegate
public class PrettyMulticastDelegate<T> {

    // MARK: - Private Properties
    private let delegates: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    // MARK: - Initializers
    public init() {
    }
    
    // MARK: - Public Methods
    public func add(_ delegate: T) {
        delegates.add(delegate as AnyObject)
    }

    public func remove(_ delegateToRemove: T) {
        for delegate in delegates.allObjects.reversed() {
            if delegate === delegateToRemove as AnyObject {
                delegates.remove(delegate)
            }
        }
    }

    public func invoke(_ invocation: (T) -> Void) {
        for delegate in delegates.allObjects.reversed() {
            invocation(delegate as! T)
        }
    }
}
