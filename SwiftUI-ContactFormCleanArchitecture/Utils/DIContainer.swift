//
//  DIContainer.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Foundation
import Swinject

/// DIを実装するクラス、シングルトン
/// プリプロセッサマクロなどを利用して環境単位で注入するクラスを指定する
/// DIContainerはステップ数が増えやすいのでLintから除外した方が良い
final class DIContainer {
    let container = Container()
    static let shared = DIContainer()

    private init() {
        #if MOCK
            initMock()
        #else
            initImpl()
        #endif
    }

    #if DEBUG
        func reset() {
            #if MOCK
                initMock()
            #else
                initImpl()
            #endif
        }
    #endif

    /// デバッグ環境の注入
    private func initMock() {
        // Repository
        container.register(InquiryHttpRepositoryProtocol.self) { _ in InquiryHttpConnectionStub() }
        // UseCase
        container.register(InquiryUseCaseProtocol.self) { r in
            InquiryUseCaseImpl(
                inquiryHttpRepository:
                    r.resolve(InquiryHttpRepositoryProtocol.self)!
            )
        }
    }
    /// リリース環境の注入
    private func initImpl() {
        // APIClient
        container.register(APIClientProtocol.self) { _ in APIClient() }
        // Repository
        container.register(InquiryHttpRepositoryProtocol.self) { _ in InquiryHttpConnectionImp() }
        // UseCase
        container.register(InquiryUseCaseProtocol.self) { r in
            InquiryUseCaseImpl(
                inquiryHttpRepository:
                    r.resolve(InquiryHttpRepositoryProtocol.self)!
            )
        }
    }

    func getInquiryHttpRepository() -> InquiryHttpRepositoryProtocol {
        return container.resolve(InquiryHttpRepositoryProtocol.self)!
    }

    func setInquiryHttpRepository(repository: InquiryHttpRepositoryProtocol) {
        container.register(InquiryHttpRepositoryProtocol.self) { _ in repository }
    }

    /// InquiryUseCaseの取得
    func getInquiryUseCase() -> InquiryUseCaseProtocol {
        return container.resolve(InquiryUseCaseProtocol.self)!
    }

    func setInquiryUseCase(useCase: InquiryUseCaseProtocol) {
        container.register(InquiryUseCaseProtocol.self) { _ in useCase }
    }

    func setApiClient(client: APIClientProtocol) {
        container.register(APIClientProtocol.self) { _ in client }
    }

    func getApiClient() -> APIClientProtocol {
        return container.resolve(APIClientProtocol.self)!
    }
}
