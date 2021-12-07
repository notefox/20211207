//
//  IntToRomanNumeralConversionTest.swift
//  calculatorTests
//
//  Created by Tino Geißler on 11.11.21.
//

import XCTest

class IntToRomanNumeralConversionTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func singleNumeralIntToRomanTest() throws {
        XCTAssert(Int(1).toRomanNumeral == "I")
        XCTAssert(Int(5).toRomanNumeral == "V")
        XCTAssert(Int(10).toRomanNumeral == "X")
        XCTAssert(Int(50).toRomanNumeral == "L")
        XCTAssert(Int(100).toRomanNumeral == "C")
        XCTAssert(Int(500).toRomanNumeral == "D")
        XCTAssert(Int(1000).toRomanNumeral == "M")
    }
    
    func doubleNumeralIntToRomanTest() throws {
        XCTAssert(Int(4).toRomanNumeral == "IV")
        XCTAssert(Int(9).toRomanNumeral == "IX")
        XCTAssert(Int(40).toRomanNumeral == "XL")
        XCTAssert(Int(90).toRomanNumeral == "XC")
        XCTAssert(Int(400).toRomanNumeral == "CD")
        XCTAssert(Int(900).toRomanNumeral == "CM")
    }

    func complexNumeralIntToRomanTest() throws {
        XCTAssert(Int(2).toRomanNumeral == "II")
        XCTAssert(Int(6).toRomanNumeral == "VI")
        XCTAssert(Int(15).toRomanNumeral == "XV")
        XCTAssert(Int(14).toRomanNumeral == "XIV")
        XCTAssert(Int(16).toRomanNumeral == "XVI")
        XCTAssert(Int(1091).toRomanNumeral == "MXCI")
        XCTAssert(Int(1670).toRomanNumeral == "MDCLXX")
        XCTAssert(Int(3670).toRomanNumeral == "MMMDCLXX")
    }
    
    func testPerformanceExample() throws {
        try singleNumeralIntToRomanTest()
        try doubleNumeralIntToRomanTest()
        try complexNumeralIntToRomanTest()
    }

}
