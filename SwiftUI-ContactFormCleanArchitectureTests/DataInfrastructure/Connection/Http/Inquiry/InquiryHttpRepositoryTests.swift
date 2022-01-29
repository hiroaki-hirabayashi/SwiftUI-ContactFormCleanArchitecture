////
////  InquiryHttpRepositoryTests.swift
////  SwiftUI-ContactFormCleanArchitectureTests
////
////  Created by Hiroaki-Hirabayashi on 2021/12/30.
////
//import Cuckoo
//import XCTest
//@testable import SwiftUI_ContactFormCleanArchitecture
//
//class InquiryHttpRepositoryTests: XCTestCase {
//    
//    override func setUpWithError() throws {
//    }
//    
//    override func tearDownWithError() throws {
//    }
//    
//    func testSendInquiry() throws {
//        let mock = MockSendInquiryRequest()
//        stub(mock) { stub in
//            when(
//                stub.request(
//                    url: any(),
//                    httpMethod: any(),
//                    entity: any(),
//                    success: any(),
//                    failure: any()
//                )
//            )
//                .then { _, _, _, success, _ in
//                    success(AcceptInquiryEntity(id: "id", description: "description", postedAt: "postedAt"))
//                }
//        }
//        let exp = expectation(description: "sendInquiry")
//        let inquiryHttpRepository = DIContainer.shared.getInquiryHttpRepository()
//        inquiryHttpRepository.sendInquiry(inquiry: Inquiry(description: "description")) { error in
//            XCTAssertNil(error)
//            exp.fulfill()
//        }
//        wait(for: [exp], timeout: 5.0)
//    }
//    
//}
