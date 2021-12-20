//
//  ContactTopViewUITests.swift
//  SwiftUI_ContactForm_CleanArchitectureUITests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/20.
//

import XCTest

class ContactTopViewUITests: XCTestCase {
    private let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
        XCUIApplication().launch()
        app.launch()
    }
    
    override func tearDownWithError() throws {
    }
    
    // ContactTopViewにボタンがあることテスト
    func testShowContactForm() throws {
        let useContactFormButton = app.buttons["ContactTopView_UseContactForm"].firstMatch
        XCTAssertTrue(useContactFormButton.exists)
        
        useContactFormButton.tap()
        
//        let sendButton = app.buttons["ContactFormView_SendButton"].firstMatch
//        XCTAssertTrue(sendButton.exists)
    }
    
}
