//
//  File.swift
//  
//
//  Created by Ravi Kumar Yaganti on 15/04/21.
//

import XCTest
@testable import ValidationLibrary


final class ValidationTestsTests: XCTestCase {
    
    func testValidEmail() {
        let emailID = "yaganti.ravikumar@gmail.com"
        XCTAssertTrue(emailID.isEmail)
    }
    
    func testInValidEmail() {
        let emailID = "yaganti.ravikumar@gmail.m"
        XCTAssertFalse(emailID.isEmail, "This should be failed")
    }
}
