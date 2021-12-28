//
//  APIClient.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/29.
//

import Alamofire
import Foundation
import UIKit

protocol APIClient {
    associatedtype EntityType: Codable
    associatedtype RequestType: Codable

    func request(
        url: String,
        httpMethod: HTTPMethod,
        entity: RequestType,
        success: @escaping (_ response: EntityType) -> Void,
        failure: @escaping () -> Void
    )
}

extension APIClient {
    func request(
        url: String,
        httpMethod: HTTPMethod,
        entity: RequestType,
        success: @escaping (_ response: EntityType) -> Void,
        failure: @escaping () -> Void
    ) {
        // TODO: 仮実装
        //                let request = AF.request(url, method: .get, parameters: [:],
        //                  encoding: URLEncoding.default, headers: [:])
        //                request.responseJSON { response in
        //                    if let err = response.error {
        //                        // error
        //                        print(err.errorDescription ?? "Unknown Error")
        //                        failure()
        //                        return
        //                    }
        //
        //                    if let data = response.data {
        //                        // success
        //                        do {
        //                            let result = try JSONDecoder().decode(mapper.entity, from: data)
        //                    success(mapper.entityToDomain(entity: result))
        //                } catch {
        //                    failure()
        //                }
        //            } else {
        //                // NO Data
        //                success(nil)
        //            }
        //        }
    }

    func httpPost<T: Encodable>(
        url: String, entity: T, complete: @escaping (_ result: Bool) -> Void
    ) {
        //        // TODO: 仮実装
        //        var request = URLRequest(url: URL(string: url)!)
        //        request.httpMethod = "POST"
        //        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        //
        //        do {
        //            let params = try entity.asDictionary()
        //            request.httpBody = try JSONSerialization.data(withJSONObject: params)
        //            AF.request(request).responseJSON { response in
        //                if let err = response.error {
        //                    // error
        //                    print(err.errorDescription ?? "Unknown Error")
        //                    complete(false)
        //                    return
        //                }
        //                complete(true)
        //            }
        //        } catch {
        //            complete(false)
        //        }
    }
}

