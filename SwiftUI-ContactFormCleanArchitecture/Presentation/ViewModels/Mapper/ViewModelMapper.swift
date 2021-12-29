//
//  ViewModelMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

protocol ViewModelMapper {
    associatedtype DomainType: Any
    associatedtype ViewModelType: Any

    func domainToViewModel(domain: DomainType) -> ViewModelType
    func viewModelToDomain(model: ViewModelType) -> DomainType
}
