//
//  String+Localizable.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/20.
//

import Foundation

extension String {
    var localizedString: String {
        Bundle.Module.localizedString(forKey: self)
    }
}
