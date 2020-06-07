//
//  LocalizedValueTests.swift
//  SwiftUICombineBaseTests
//
//  Created by Shalom Friss on 5/25/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import XCTest
@testable import SwiftUICombineBase

class LocalizedValueTests: XCTestCase {
    let testKey     = "test_value"
    let testValue   = "test_value_1"
    
    @LocalizedValue(key: "test_value", comment: "a comment")
    var theValue:String
    
    
    func testDefaultValueOfLocalizedValue() throws {
        XCTAssertEqual(theValue, "test123")
    }
    
    func testUpdatingValueOfLocalizedValue() {
        theValue = "test_value_1";
        XCTAssertEqual(theValue, "test456")
    }
    
}
