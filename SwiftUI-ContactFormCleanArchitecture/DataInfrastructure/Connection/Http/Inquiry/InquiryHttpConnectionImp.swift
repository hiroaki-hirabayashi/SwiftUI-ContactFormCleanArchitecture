//
//  InquiryHttpConnectionImp.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//
import Alamofire
import Foundation

final class InquiryHttpConnectionImp: InquiryHttpRepositoryProtocol {
    func sendInquiry(inquiry: Inquiry, completed: @escaping (Error?) -> Void) {
        let client = DIContainer.shared.getApiClient()
        let mapper = SendInquiryMapper(requestEntity: SendInquiryMapper.domainToRequest(domain: inquiry))
        client.request(
            mapper: mapper,
            success: { _ in
                completed(nil)
            },
            failure: {
                completed(InquiryHttpRepositoryError.connectionFail)
            }
        )
    }
    
    func foundAnsweredInquiry(completed: @escaping ([AnsweredInquiry], Error?) -> Void) {
        let client = DIContainer.shared.getApiClient()
        let mapper = FoundInquiryMapper()
        client.request(
            mapper: mapper,
            success: { result in
                completed(result, nil)
            },
            failure: {
                completed([], InquiryHttpRepositoryError.connectionFail)
            }
        )
    }
}
