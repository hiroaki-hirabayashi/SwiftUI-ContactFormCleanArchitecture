//
//  InquiryUseCaseTests.swift
//  SwiftUI_ContactForm_CleanArchitectureTests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//
import Cuckoo
import XCTest
@testable import SwiftUI_ContactFormCleanArchitecture

class InquiryUseCaseTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
        DIContainer.shared.reset()
    }
    
    // お問い合わせメッセージ
    func testSendInquiry() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        
        stub(mock) { stub in
            when(stub.sendInquiry(inquiry: any(), completed: any()))
                .then { _, completed in completed(nil) }
        }
        
        let exp = expectation(description: "sendInquiry")
        inquiryUseCases.sendInquiry(inquiry: Inquiry(description: "予約できませんでした")) { error in
            XCTAssertNil(error)
            exp.fulfill()
        }
        verify(mock).sendInquiry(inquiry: any(), completed: any())
        wait(for: [exp], timeout: 5.0)
    }
    
    // お問い合わせメッセージが0文字の時
    func testSendInquiryEmptyString() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        let exp = expectation(description: "sendInquiry")
        inquiryUseCases.sendInquiry(inquiry: Inquiry(description: "")) { error in
            XCTAssertNotNil(error)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5.0)
    }
    // お問い合わせメッセージが4000文字以上の時
    func testSendInquiryOverString() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        
        var text = ""
        for _ in 0 ... 4000 {
            text += "a"
        }
        
        let exp = expectation(description: "sendInquiry")
        inquiryUseCases.sendInquiry(inquiry: Inquiry(description: text)) { error in
            XCTAssertNotNil(error)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5.0)
    }
    
    // お問い合わせメッセージ送信エラー
    func testSendInquiryRepositoryError() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        
        stub(mock) { stub in
            when(stub.sendInquiry(inquiry: any(), completed: any()))
                .then { _, completed in completed(InquiryHttpRepositoryError.connectionFail) }
        }
        
        let exp = expectation(description: "sendInquiry")
        inquiryUseCases.sendInquiry(inquiry: Inquiry(description: "予約できませんでした")) { error in
            XCTAssertNotNil(error)
            exp.fulfill()
        }
        verify(mock).sendInquiry(inquiry: any(), completed: any())
        wait(for: [exp], timeout: 5.0)
    }
    
    // 回答メッセージあり
    func testFoundAnsweredInquiryExist() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        
        stub(mock) { stub in
            when(stub.foundAnsweredInquiry(completed: any()))
                .then { completed in
                    completed(
                        [AnsweredInquiry(answer: "answer", answeredAT: Date(), inquiry: Inquiry(description:"inquiry"))], nil
                    )
                }
        }
        
        let exp = expectation(description: "foundAnsweredInquiry")
        inquiryUseCases.foundAnsweredInquiry { exist, error in
            XCTAssertNil(error)
            XCTAssertTrue(exist)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5.0)
    }
    
    // 回答メッセージなし
    func testFoundAnsweredInquiryNotExist() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        
        stub(mock) { stub in
            when(stub.foundAnsweredInquiry(completed: any()))
                .then { completed in
                    completed([], nil)
                }
        }
        
        let exp = expectation(description: "foundAnsweredInquiry")
        inquiryUseCases.foundAnsweredInquiry { exist, error in
            XCTAssertNil(error)
            XCTAssertFalse(exist)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5.0)
    }
    
    // 回答メッセージ送信エラー
    func testFoundAnsweredInquiryRepositoryError() throws {
        let mock = MockInquiryHttpRepositoryProtocol()
        DIContainer.shared.setInquiryHttpRepository(repository: mock)
        let inquiryUseCases = DIContainer.shared.getInquiryUseCase()
        
        stub(mock) { stub in
            when(stub.foundAnsweredInquiry(completed: any()))
                .then { completed in
                    completed([], InquiryHttpRepositoryError.connectionFail)
                }
        }
        
        let exp = expectation(description: "foundAnsweredInquiry")
        inquiryUseCases.foundAnsweredInquiry { exist, error in
            XCTAssertNotNil(error)
            XCTAssertFalse(exist)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5.0)
    }
}
