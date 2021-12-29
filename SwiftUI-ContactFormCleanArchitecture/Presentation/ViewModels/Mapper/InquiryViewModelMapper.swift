//
//  InquiryViewModelMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Foundation

final class InquiryViewModelMapper: ViewModelMapper {
    typealias DomainType = Inquiry
    typealias ViewModelType = String
    
    func viewModelToDomain(model: String) -> Inquiry {
        Inquiry(description: model)
    }
    
    func domainToViewModel(domain: Inquiry) -> String {
        domain.description
    }
}
