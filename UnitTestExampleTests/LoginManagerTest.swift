//
//  LoginManagerTest.swift
//  UnitTestExampleTests
//
//  Created by Perennials on 11/01/24.
//

import XCTest
@testable import UnitTestExample

final class LoginManagerTest: XCTestCase {
    
    func testLoginWithValidCredentials() {
        let loginVC = ViewController()
        XCTAssertTrue(loginVC.validateLoginCredentials(userName: "user", password: "password"))
    }
    func testLoginWithEmptyUsername() {
        let loginVC = ViewController()
        XCTAssertFalse(loginVC.validateLoginCredentials(userName: "", password: "password"), "username cannot be empty")
    }
    func testLoginWithEmptyPassword() {
        let loginVC = ViewController()
        XCTAssertFalse(loginVC.validateLoginCredentials(userName: "user", password: ""), "")
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
