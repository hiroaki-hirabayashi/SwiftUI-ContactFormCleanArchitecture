//
//  InquiryUseCaseTests.swift
//  SwiftUI_ContactForm_CleanArchitectureTests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//
import Cuckoo
import XCTest
@testable import SwiftUI_ContactForm_CleanArchitecture


class InquiryUseCaseTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
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
    
}
