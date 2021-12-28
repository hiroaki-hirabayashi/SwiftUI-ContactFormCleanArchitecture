//
//  Encodable+Dictionary.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/29.
//

import Foundation

extension Encodable {
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(
            with: data,
            options: .fragmentsAllowed
        ) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }
}
