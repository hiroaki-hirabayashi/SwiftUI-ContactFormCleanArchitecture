//
//  EntityMapper.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/30.
//

import Alamofire

protocol EntityMapper: EntityMapperBase {
    static func domainToRequest(domain: DomainModel) -> RequestType
    func entityToDomain(entity: EntityType) -> DomainModel
}

protocol EntityMapperBase {
    associatedtype EntityType: Codable
    associatedtype RequestType: Codable
    associatedtype DomainModel
    var requestEntity: RequestType { get set }
    var requestPath: String { get }
    var method: HTTPMethod { get }
    var encoding: ParameterEncoding { get }
}
