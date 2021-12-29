//
//  EntityMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/30.
//

protocol EntityMapper {
    associatedtype DomainType
    associatedtype EntityType: Codable
    
    func domainToEntity(domain: DomainType) -> EntityType
    func entityToDomain(entity: EntityType) -> DomainType
}
