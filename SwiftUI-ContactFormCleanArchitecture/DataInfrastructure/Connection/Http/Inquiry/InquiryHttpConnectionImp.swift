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
        
    }
    
    func foundAnsweredInquiry(completed: @escaping ([AnsweredInquiry], Error?) -> Void) {
    }
}

class SendInquiryRequest: APIClient {
    typealias EntityType = AcceptInquiryEntity
    
    typealias RequestType = InquiryFormEntity
    func request(
        url: String,
        httpMethod: HTTPMethod,
        entity: InquiryFormEntity,
        success: @escaping (AcceptInquiryEntity) -> Void,
        failure: @escaping () -> Void
    ) {
    }
}
