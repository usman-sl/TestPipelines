//
//  TestPipelinesTests.swift
//  TestPipelinesTests
//
//  Created by Muhammad Usman on 05/11/2024.
//

import XCTest
@testable import TestPipelines

final class TestPipelinesTests: XCTestCase {

    var viewModel: LoginViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = LoginViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testUsernameIsEmpty() {
        XCTAssertFalse(viewModel.validateUsername(userName: ""), "Empty username should be invalid")
    }
    
    func testUsernameTooShort() {
        XCTAssertFalse(viewModel.validateUsername(userName: "ab"), "Username with less than 3 characters should be invalid")
    }
    
    func testUsernameTooLong() {
        XCTAssertFalse(viewModel.validateUsername(userName: "abcdefghijklmnopqrstuvwxyz"), "Username with more than 20 characters should be invalid")
    }
    
    func testUsernameWithSpecialCharacters() {
        XCTAssertFalse(viewModel.validateUsername(userName: "user@name"), "Username with special characters should be invalid")
    }
    
    func testUsernameStartingWithNonLetter() {
        XCTAssertFalse(viewModel.validateUsername(userName: "1username"), "Username starting with a non-letter should be invalid")
    }
    
    func testValidUsername() {
        XCTAssertTrue(viewModel.validateUsername(userName: "ValidUser123"), "Username with valid length and alphanumeric characters should be valid")
    }
}
