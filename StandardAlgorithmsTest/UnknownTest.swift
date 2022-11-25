//
//  UnknownTest.swift
//  StandardAlgorithmsTest
//
//  Created by Hammond, Leo (NA) on 25/11/2022.
//

import XCTest

class UnknownTest: XCTestCase {

    func testToAddFirstAndLastIntegersInAnArray() {
        //arrange
        let array = [3, 1, 10, 15, 4]
        let expected = 7
        let unknown = Unknown()
        //act
        let sum = unknown.sumOfFirstAndLast(data: array)
        //assert
        XCTAssertEqual(sum, expected)
    }
    
    func testToFindMode() {
        //arrange
        let array = [1,2,2,3,4,5]
        let expected = 2
        let unknown = Unknown()
        //act
        let mode = unknown.findMode(data: array)
        //assert
        XCTAssertEqual(mode, expected)
    }
}
