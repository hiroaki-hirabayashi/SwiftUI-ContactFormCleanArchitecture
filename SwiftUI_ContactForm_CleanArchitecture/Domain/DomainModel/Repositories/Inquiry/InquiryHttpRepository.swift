//
//  InquiryHttpRepository.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Foundation

protocol InquiryHttpRepositoryProtocol {
    func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)
}
