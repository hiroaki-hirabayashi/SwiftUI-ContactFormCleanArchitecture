//
//  ContactFormViewUITests.swift
//  SwiftUI_ContactForm_CleanArchitectureUITests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/22.
//

import XCTest

class ContactFormViewUITests: XCTestCase {
    private let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launchArguments.append("UITests")
        app.launch()
        
        let useContactFormButton = app.buttons["ContactTopView_UseContactForm"].firstMatch
        useContactFormButton.tap()
    }
    
    override func tearDownWithError() throws {
    }
    
    // ContactFormViewにキャンセルボタンがある事
    func testCloseContactForm() throws {
        let closeButton = app.buttons["ContactFormView_CloseButton"].firstMatch
        XCTAssertTrue(closeButton.exists)
        
        closeButton.tap()
        XCTAssertFalse(closeButton.waitForNotExistence(timeout: 3))
    }
    
    // ContactFormViewの送信ボタンタップ後、送信ボタンが非表示になる
    // アラートタイトルが表示される
    // OKボタンを押したら非表示になる
    func testSendContact() throws {
        let sendButton = app.buttons["ContactFormView_SendButton"].firstMatch
        XCTAssertTrue(sendButton.exists)
        
        sendButton.tap()
        XCTAssertFalse(sendButton.waitForNotExistence(timeout: 3))
        
        let contactAlertTitle = app.staticTexts["ContactSendAlert_Title".localizedString].firstMatch
        XCTAssertTrue(contactAlertTitle.waitForExistence(timeout: 3))
        
        let alertButton = app.buttons["AlertButton_OK".localizedString].firstMatch
        alertButton.tap()
        XCTAssertFalse(contactAlertTitle.waitForNotExistence(timeout: 3))
    }
}
