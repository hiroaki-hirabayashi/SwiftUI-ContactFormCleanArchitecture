//
//  String+Localizable.swift
//  SwiftUI_ContactForm_CleanArchitectureUITests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/22.
//

import Foundation

class TestBundle {}
extension String {
    /// Test用のlocalizedStringを読み込むため
    var localizedString: String {
        let bundle = Bundle(for: TestBundle.self)
        let textString = bundle.localizedString(forKey: self, value: nil, table: nil)
        return textString
    }
}
