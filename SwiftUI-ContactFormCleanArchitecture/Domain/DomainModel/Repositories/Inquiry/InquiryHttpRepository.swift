//
//  InquiryHttpRepository.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Foundation

enum InquiryHttpRepositoryError: Error {
    case connectionFail
}

protocol InquiryHttpRepositoryProtocol {
    func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)
    func foundAnsweredInquiry(completed: @escaping (_ result: [AnsweredInquiry], _ error: Error?) -> Void)
}
