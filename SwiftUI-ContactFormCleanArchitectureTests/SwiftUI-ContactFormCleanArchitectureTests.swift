//
//  SwiftUI_ContactForm_CleanArchitectureTests.swift
//  SwiftUI_ContactForm_CleanArchitectureTests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/17.
//
import Cuckoo
import XCTest
@testable import SwiftUI-ContactFormCleanArchitecture

class SwiftUI-ContactFormCleanArchitectureTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let mock = MockMockTest()
        stub(mock) { stub in
            when(stub.getTestData()).thenReturn("result")
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
