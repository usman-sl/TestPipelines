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
        XCTAssertTrue(viewModel.validateUsername(userName: "1255"), "Empty username should be invalid")
    }
    
    func testUsernameTooShort() {
        XCTAssertTrue(viewModel.validateUsername(userName: "auhb"), "Username with less than 3 characters should be invalid")
    }
    
    func testUsernameTooLong() {
        XCTAssertTrue(viewModel.validateUsername(userName: "abcdefghijklmnopqrstuvwxyz"), "Username with more than 20 characters should be invalid")
    }
    
    func testUsernameWithSpecialCharacters() {
        XCTAssertTrue(viewModel.validateUsername(userName: "user@name"), "Username with special characters should be invalid")
    }
    
    func testUsernameStartingWithNonLetter() {
        XCTAssertTrue(viewModel.validateUsername(userName: "1username"), "Username starting with a non-letter should be invalid")
    }
}
