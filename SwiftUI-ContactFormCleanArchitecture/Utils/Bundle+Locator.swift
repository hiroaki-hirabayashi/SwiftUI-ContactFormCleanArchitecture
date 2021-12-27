//
//  BundleLocator.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/20.
//

import Foundation

class BundleLocator {}
extension Bundle {
    static var Module: Bundle {
        Bundle(for: BundleLocator.self)
    }

    func localizedString(forKey key: String) -> String {
        self.localizedString(forKey: key, value: nil, table: nil)
    }
}
