//
//  FoundInquiryMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/07.
//

import Alamofire
import Foundation

final class FoundInquiryMapper: EntityMapper {
    typealias EntityType = [AnsweredInquiryEntity]
    typealias RequestType = FoundAnswerdInquiriesEntity
    typealias DomainModel = [AnsweredInquiry]
    
    var requestEntity: FoundAnswerdInquiriesEntity
    var requestPath = "/inquiries-answers"
    var method: HTTPMethod = .get
    var encoding: ParameterEncoding = URLEncoding.default
    
    init() {
        requestEntity = FoundAnswerdInquiriesEntity()
    }
    
    static func domainToRequest(domain: [AnsweredInquiry]) -> FoundAnswerdInquiriesEntity {
        return FoundAnswerdInquiriesEntity()
    }
    
    func entityToDomain(entity: [AnsweredInquiryEntity]) -> [AnsweredInquiry] {
        let formatter = DateUtils.getServerDateTimeFormatter()
        var result: [AnsweredInquiry] = []
        for item in entity {
            result.append(
                AnsweredInquiry(
                    answer: item.answerDescription,
                    answeredAT: formatter.date(from: item.answerdAt)!,
                    inquiry: Inquiry(
                        description: item.description,
                        inquiryID: item.id,
                        postedAT: formatter.date(from: item.postedAt)
                    )
                )
            )
        }
        return result
    }
}
