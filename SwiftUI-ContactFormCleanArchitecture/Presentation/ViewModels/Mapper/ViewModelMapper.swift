//
//  ViewModelMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

protocol ViewMappingProtocol {
    func domainToViewModel<D, V>(domain: D) -> V
    func viewModelToDomain<D, V>(model: V) -> D
}

class ViewModelMapper<D, V>: ViewMappingProtocol {
    func domainToViewModel<D, V>(domain: D) -> V {
        return V.self as! V
    }
    
    func viewModelToDomain<D, V>(model: V) -> D {
        return D.self as! D

    }
}
