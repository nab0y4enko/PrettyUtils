//
//  PrettyPlistInfoExecutor.swift
//  PrettyUtils
//
//  Created by Oleksii Naboichenko on 3/6/20.
//  Copyright © 2020 Oleksii Naboichenko. All rights reserved.
//

import Foundation

// MARK: - PrettyInfoPlistExecutor
public enum PrettyInfoPlistExecutor {
    
    // MARK: - Error
    enum Error: Swift.Error {
        case missingKey, invalidValue
    }

    // MARK: - Public Methods
    public static func value<T>(for key: String, bundle: Bundle = Bundle.main) throws -> T where T: LosslessStringConvertible {
        guard let object = bundle.object(forInfoDictionaryKey: key) else {
            throw Error.missingKey
        }

        switch object {
        case let value as T:
            return value
        case let string as String where string.isEmpty == false:
            guard let value = T(string) else {
                fallthrough
            }
            return value
        default:
            throw Error.invalidValue
        }
    }
}
