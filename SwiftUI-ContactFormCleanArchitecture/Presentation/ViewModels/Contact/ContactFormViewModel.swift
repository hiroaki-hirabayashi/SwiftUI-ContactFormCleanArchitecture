//
//  ContactFormViewModel.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/22.
//

import Foundation

final class ContactFormViewModel: ObservableObject {
    @Published var text: String = ""
}
