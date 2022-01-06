//
//  InquiryHttpConnectionStub.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/07.
//

import Foundation

final class InquiryHttpConnectionStub: InquiryHttpRepositoryProtocol {
    func sendInquiry(inquiry: Inquiry, completed: @escaping (Error?) -> Void) {
        if ProcessInfo.processInfo.arguments.contains("sendInquiryConnectionFail") {
            completed(InquiryHttpRepositoryError.connectionFail)
        } else {
            completed(nil)
        }
    }
    
    func foundAnsweredInquiry(completed: @escaping ([AnsweredInquiry], Error?) -> Void) {
        let foundAnsweredInquiry = AnsweredInquiry(
            answer: "answer",
            answeredAT: Date(),
            inquiry: Inquiry(
                description: "inquiry",
                inquiryID: "id",
                postedAT: Date()
            )
        )
        completed([foundAnsweredInquiry], nil)
    }
}
