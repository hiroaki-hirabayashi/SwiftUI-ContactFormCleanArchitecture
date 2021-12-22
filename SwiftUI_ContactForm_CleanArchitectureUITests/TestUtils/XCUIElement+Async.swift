//
//  XCUIElement+Async.swift
//  SwiftUI_ContactForm_CleanArchitectureUITests
//
//  Created by Hiroaki-Hirabayashi on 2021/12/22.
//

import XCTest

extension XCUIElement {
    /// 要素のexistsプロパティがfalseになるまで、指定した時間待機します。
    /// - Parameter timeout:
    /// - Returns: 要素のexistsプロパティの値
    func waitForNotExistence(timeout: TimeInterval) -> Bool {
        let predicate = NSPredicate(format: "exists == 0")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)
        _ = XCTWaiter.wait(for: [expectation], timeout: timeout)
        return exists
    }
}
