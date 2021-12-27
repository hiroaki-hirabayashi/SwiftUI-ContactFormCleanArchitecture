//
//  InquiryUseCaseProtocol.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Foundation

enum InquiryUseCaseError: Error {
    case empty
    case overString
}

protocol InquiryUseCaseProtocol {
    func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)
    
    func foundAnsweredInquiry(completed: @escaping (_ exist: Bool, _ error: Error?) -> Void)
}
