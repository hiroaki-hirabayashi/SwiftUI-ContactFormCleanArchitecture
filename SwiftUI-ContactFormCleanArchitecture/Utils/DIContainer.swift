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
    //    /// デバッグ環境の注入
    private func initMock() {
        //        // Repository
        //        container.register(AccountHttpRepository.self) { _ in AccountHttpConnectionStub() }
        //        // UseCase
        //        container.register(AccountUseCase.self) { _ in AccountUseCaseStub() }
    }
    /// リリース環境の注入
    private func initImpl() {
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
    
    func setInquiryHttpRepository(repository: InquiryHttpRepositoryProtocol) {
        container.register(InquiryHttpRepositoryProtocol.self) { _ in repository }
    }
    //    /// AccountAPIRepositoryの取得
    //    func getAccountRepository() -> AccountHttpRepository {
    //        return container.resolve(AccountHttpRepository.self)!
    //    }
    /// InquiryUseCaseの取得
    func getInquiryUseCase() -> InquiryUseCaseProtocol {
        return container.resolve(InquiryUseCaseProtocol.self)!
    }
}
