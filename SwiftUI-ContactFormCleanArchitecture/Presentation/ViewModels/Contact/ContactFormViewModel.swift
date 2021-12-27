//
//  ContactFormViewModel.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/22.
//

import Foundation

final class ContactFormViewModel: ObservableObject {
    @Published var text = ""
    private let inquiryUseCase: InquiryUseCaseProtocol = DIContainer.shared.getInquiryUseCase()
    
    func sendInquiry(_ completed: @escaping(_ error: Error?) -> Void) {
        let mapper = InquiryViewModelMapper()
        inquiryUseCase.sendInquiry(inquiry: mapper.viewModelToDomain(model: text)) { error in
            completed(error)
        }
    }
}
