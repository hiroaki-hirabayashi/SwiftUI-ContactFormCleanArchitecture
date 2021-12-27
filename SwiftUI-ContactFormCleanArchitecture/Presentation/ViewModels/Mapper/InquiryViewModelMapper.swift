//
//  InquiryViewModelMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Foundation

final class InquiryViewModelMapper: ViewModelMapper<Inquiry, String>  {
    override func viewModelToDomain<D, V>(model: V) -> D {
        return Inquiry(description: model as! String) as! D
    }
}
