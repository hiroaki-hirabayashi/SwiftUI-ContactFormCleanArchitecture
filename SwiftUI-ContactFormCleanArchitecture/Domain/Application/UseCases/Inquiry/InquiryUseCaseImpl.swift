//
//  InquiryUseCaseImpl.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Foundation

final class InquiryUseCaseImpl: InquiryUseCaseProtocol {
    private let inquiryHttpRepository: InquiryHttpRepositoryProtocol
    
    init(inquiryHttpRepository: InquiryHttpRepositoryProtocol) {
        // 上でlet定義したもの
        self.inquiryHttpRepository = inquiryHttpRepository
    }
    
    func sendInquiry(inquiry: Inquiry, completed: @escaping (Error?) -> Void) {
        // 送信メッセージが空の時
        if inquiry.description.isEmpty {
            completed(InquiryUseCaseError.empty)
            return
        }
        // 送信メッセージが4000文字以上の時
        if inquiry.description.count > 4000 {
            completed(InquiryUseCaseError.overString)
            return
        }
        
        inquiryHttpRepository.sendInquiry(inquiry: inquiry) { error in
            completed(error)
        }
    }
    
    func foundAnsweredInquiry(completed: @escaping (Bool, Error?) -> Void) {
        inquiryHttpRepository.foundAnsweredInquiry { result, error in
            completed(!result.isEmpty, error)
        }
    }
}
