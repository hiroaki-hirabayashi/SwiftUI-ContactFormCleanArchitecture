//
//  SendInquiryMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/07.
//

import Alamofire
import Foundation

final class SendInquiryMapper: EntityMapper {
    typealias EntityType = AcceptInquiryEntity
    typealias RequestType = InquiryFormEntity
    typealias DomainModel = Inquiry
    
    var requestEntity: InquiryFormEntity
    var requestPath = "/inquiries"
    var method: HTTPMethod = .post
    var encoding: ParameterEncoding = JSONEncoding.default
    
    init(requestEntity: InquiryFormEntity) {
        self.requestEntity = requestEntity
    }
    
    static func domainToRequest(domain: Inquiry) -> InquiryFormEntity {
        return InquiryFormEntity(description: domain.description)
    }
    
    func entityToDomain(entity: AcceptInquiryEntity) -> Inquiry {
        let formatter = DateUtils.getServerDateTimeFormatter()
        return Inquiry(
            description: entity.description,
            inquiryID: entity.id,
            postedAT: formatter.date(from: entity.postedAt)
        )
    }
}
