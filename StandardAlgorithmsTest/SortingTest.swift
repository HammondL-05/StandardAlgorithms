//
//  StandardAlgorithmsTest.swift
//  StandardAlgorithmsTest
//
//  Created by Hammond, Leo (NA) on 25/11/2022.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act
        let sortedArray = sorting.bubbleSort(data: unsortedArray)
        //assert
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testMergeSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act
        let sortedArray = sorting.mergeSort(unsortedArray)
        //assert
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testInsertionSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act
        let sortedArray = sorting.insertionSort(unsortedArray)
        //assert
        XCTAssertEqual(sortedArray, expected)
    }

}
