//
//  APIClient.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/29.
//

import Alamofire
import Foundation
import UIKit

final class APIClient: APIClientProtocol {
    // TODO: 目的に合わせて変更できる様にしたい
    static let apiDomain = "http://localhost:8080"
    
    func request<Mapper: EntityMapper>(
        mapper: Mapper,
        success: @escaping (_ response: Mapper.DomainModel) -> Void,
        failure: @escaping () -> Void
    ) {
        do {
            let postString = try? mapper.requestEntity.asDictionary()
            print(postString ?? [:])
            let request = AF.request(
                APIClient.apiDomain + mapper.requestPath,
                method: mapper.method,
                parameters: try mapper.requestEntity.asDictionary(),
                encoding: mapper.encoding,
                headers: ["Content-Type": "application/json"]
            )
            request.responseJSON { response in
                if let err = response.error {
                    // error
                    print(err.errorDescription ?? "Unknown Error")
                    failure()
                    return
                }
                
                if let data = response.data {
                    // success
                    let dataString = String(data: data, encoding: .utf8)
                    print(dataString ?? "NoData")
                    do {
                        let result = try JSONDecoder().decode(Mapper.EntityType.self, from: data)
                        success(mapper.entityToDomain(entity: result))
                    } catch {
                        failure()
                    }
                } else {
                    // NO Data
                    failure()
                }
            }
        } catch {
            failure()
        }
    }
}

protocol APIClientProtocol {
    func request<Mapper: EntityMapper>(
        mapper: Mapper,
        success: @escaping (_ response: Mapper.DomainModel) -> Void,
        failure: @escaping () -> Void
    )
}

