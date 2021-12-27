//
//  ContactFormViewModelTests.swift
//  SwiftUI-ContactFormCleanArchitectureTests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//
import Cuckoo
import XCTest
@testable import SwiftUI_ContactFormCleanArchitecture

class ContactFormViewModelTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testSendInquiry() throws {
        let mock = MockInquiryUseCaseProtocol()
        DIContainer.shared.setInquiryUseCase(useCase: mock)
        let viewModel = ContactFormViewModel()

        stub(mock) { stub in
            when(stub.sendInquiry(inquiry: any(), completed: any()))
                .then { inquiry, completed in
                    XCTAssertEqual(inquiry.description, "予約できませんでした")
                    completed(nil) }
        }

        let exp = expectation(description: "sendInquiry")
        viewModel.text = "予約できませんでした"
        viewModel.sendInquiry { error in
            XCTAssertNil(error)
            exp.fulfill()
        }
        
        verify(mock).sendInquiry(inquiry: any(), completed: any())
        wait(for: [exp], timeout: 5.0)
    }

}
