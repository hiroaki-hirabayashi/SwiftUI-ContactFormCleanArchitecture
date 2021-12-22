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
        app.launchArguments.append("UITests")
        app.launch()
    }
    
    override func tearDownWithError() throws {
    }
    
    // ContactTopViewにフォーム画面遷移ボタン、遷移先ContactFormViewに送信ボタンがある事
    func testShowContactForm() throws {
        let useContactFormButton = app.buttons["ContactTopView_UseContactForm"].firstMatch
        XCTAssertTrue(useContactFormButton.exists)
        
        useContactFormButton.tap()
        
        let sendButton = app.buttons["ContactFormView_SendButton"].firstMatch
        XCTAssertTrue(sendButton.waitForExistence(timeout: 3))
    }
    
    // ContactTopViewに回答メッセージがある事
    func testFoundAnsweredInquiry() throws {
        let foundAnsweredLabel = app.staticTexts["ContactTopView_FoundAnswered_Message".localizedString].firstMatch
        XCTAssertTrue(foundAnsweredLabel.waitForExistence(timeout: 3))
    }
    
}
