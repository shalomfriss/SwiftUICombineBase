//
//  StorageTests.swift
//  SwiftUICombineBaseTests
//
//  Created by Shalom Friss on 5/25/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import XCTest
@testable import SwiftUICombineBase

class StorageTests: XCTestCase {
    
    @Storage(key: "test1", defaultValue: "test1_default_value")
    var testValue: String
    
    override func setUpWithError() throws {
        UserDefaults.standard.removeObject(forKey: "test1")
    }
    
    func testDefaultValue() throws {
        XCTAssertEqual(testValue, "test1_default_value")
    }
    
    func testSettingValue() {
        testValue = "testing123"
        let userValue = UserDefaults.standard.string(forKey: "test1") ?? ""
        
        XCTAssertEqual(userValue, "testing123")
    }
    
    func testSettingAndGettingValue() {
        testValue = "testing1234"
        XCTAssertEqual(testValue, "testing1234")
    }
}
