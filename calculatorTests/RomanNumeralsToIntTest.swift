//
//  RomanNumeralsToIntTest.swift
//  calculatorTests
//
//  Created by Tino Geißler on 11.11.21.
//

import XCTest

class RomanNumeralsToIntTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func conversionTest() throws {
        XCTAssert(try "I".romanToInt() == Int(1))
    }

    func testPerformanceExample() throws {
        try conversionTest()
    }

}
