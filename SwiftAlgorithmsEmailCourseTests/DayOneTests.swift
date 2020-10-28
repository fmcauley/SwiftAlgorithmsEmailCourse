//
//  DayOneTests.swift
//  SwiftAlgorithmsEmailCourseTests
//
//  Created by Frank McAuley on 10/28/20.
//

import XCTest
@testable import SwiftAlgorithmsEmailCourse

class DayOneTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatDayOneIsNotNil() throws {
        let dayOne = DayOne()
        
        XCTAssertNotNil(dayOne)
    }
    
    func testThatDayOneCanPerformALinearSearch() {
        let input = [1,2,3,4,5,6]
        let value = 6
        let dayOne = DayOne()
        let output = dayOne.linearSearch(input,value)
        let expected = true
    
        XCTAssertEqual(output, expected)
    }
    
    func testThatDayOneWillReturnFalseFromLinearSearchWhenTheValueIsNotPresent() {
        let input = [1,2,3,4,5,6]
        let value = 90
        let dayOne = DayOne()
        let output = dayOne.linearSearch(input,value)
        let expected = false
    
        XCTAssertEqual(output, expected)
    }
    
    
    func testThatDayOneCanPerformABinarySearch() {
        let input = [1,2,3,4,5,6]
        let value = 90
        let dayOne = DayOne()
        let output = dayOne.binarySearch(input,value)
        let expected = false
    
        XCTAssertEqual(output, expected)
    }
    
    func testDayOnesBinarySearchWillReturnTrueWhenValueIsFound() {
        let input = [1,2,3,4,5,6]
        let value = 6
        let dayOne = DayOne()
        let output = dayOne.binarySearch(input,value)
        let expected = true
    
        XCTAssertEqual(output, expected)
    }
}
