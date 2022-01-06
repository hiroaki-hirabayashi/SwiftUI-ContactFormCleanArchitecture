//
//  ContactTopViewModel.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/18.
//

import Combine

class ContactTopViewModel: ObservableObject {
    @Published var foundMessage: String = ""
    private let inquiryUseCase: InquiryUseCaseProtocol = DIContainer.shared.getInquiryUseCase()
    
    func getFoundAnsweredInquiry() {
        inquiryUseCase.foundAnsweredInquiry { [weak self] exist, error in
            guard let self = self else { return }
            if error == nil {
                if exist {
                    self.foundMessage = "ContactTopView_FoundAnswered_Message".localizedString
                } else {
                    self.foundMessage = "ContactTopView_NotFoundAnswered_Message".localizedString
                }
            }
        }
    }
}
