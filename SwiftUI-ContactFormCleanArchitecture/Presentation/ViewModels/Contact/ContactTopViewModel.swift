//
//  ContactTopViewModel.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/18.
//

import Combine

final class ContactTopViewModel: ObservableObject {
    @Published var foundMessage: String = ""

    func getFoundAnsweredInquiry() {
        foundMessage = "ContactTopView_FoundAnswered_Message".localizedString
    }
}








