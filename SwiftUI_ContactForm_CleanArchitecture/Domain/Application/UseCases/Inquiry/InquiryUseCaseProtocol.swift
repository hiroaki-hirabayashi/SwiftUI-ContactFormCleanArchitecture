//
//  InquiryUseCaseProtocol.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Foundation

protocol InquiryUseCaseProtocol {
    func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)
}
