//
//  ContactFormViewModel.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/22.
//
import Combine
import Foundation

final class ContactFormViewModel: ObservableObject {
    @Published var text = ""
    @Published var toValidation = false
    private var anyCancellable = Set<AnyCancellable>()
    private let inquiryUseCase: InquiryUseCaseProtocol = DIContainer.shared.getInquiryUseCase()
    
    func sendInquiry(_ completed: @escaping(_ error: Error?) -> Void) {
        let mapper = InquiryViewModelMapper()
        inquiryUseCase.sendInquiry(inquiry: mapper.viewModelToDomain(model: text)) { error in
            completed(error)
        }
    }
    
    // TextEditor 0文字と4001文字の時、送信ボタンを非活性にする
    init() {
        $text
            .combineLatest($text)
            .map {
                let inputText = $0.0
                guard inputText.isEmpty || inputText.count >= 4001 else { return false }
                
                return true
            }
            .assign(to: \.toValidation, on: self)
            .store(in: &anyCancellable)
    }
}
