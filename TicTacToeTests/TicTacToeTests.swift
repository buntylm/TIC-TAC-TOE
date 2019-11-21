//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by bunty on 20/11/19.
//  Copyright © 2019 Bunty Madan. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBackSlash() {
        let input = [[Mark.X, Mark.O, Mark.O],
                     [Mark.empty, Mark.X, Mark.empty],
                     [Mark.empty, Mark.empty, Mark.X]]
        let expectedOut = ["0,0","1,1","2,2"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.X)
    }
    
    func testForwardSlash() {
        let input = [[Mark.O, Mark.O, Mark.X],
                     [Mark.empty, Mark.X, Mark.empty],
                     [Mark.X, Mark.empty, Mark.O]]
        let expectedOut = ["0,2","1,1","2,0"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.X)
    }

    func testHorizontalIndex0() {
        let input = [[Mark.X, Mark.X, Mark.X],
                     [Mark.empty, Mark.O, Mark.empty],
                     [Mark.O, Mark.empty, Mark.O]]
        let expectedOut = ["0,0","0,1","0,2"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.X)
    }
    
    func testHorizontalIndex1() {
        let input = [[Mark.O, Mark.empty, Mark.O],
                     [Mark.X, Mark.X, Mark.X],
                     [Mark.O, Mark.empty, Mark.O]]
        let expectedOut = ["1,0","1,1","1,2"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.X)
    }
    
    func testHorizontalIndex3() {
        let input = [[Mark.O, Mark.empty, Mark.O],
                     [Mark.O, Mark.empty, Mark.O],
                     [Mark.X, Mark.X, Mark.X]]
        let expectedOut = ["2,0","2,1","2,2"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.X)
    }
    
    func testVerticalIndex1() {
        let input = [[Mark.O, Mark.empty, Mark.O],
                     [Mark.O, Mark.empty, Mark.O],
                     [Mark.O, Mark.X, Mark.X]]
        let expectedOut = ["0,0","1,0","2,0"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.O)
    }
    
    func testVerticalIndex2() {
        let input = [[Mark.O, Mark.O, Mark.empty],
                     [Mark.X, Mark.O, Mark.O],
                     [Mark.X, Mark.O, Mark.X]]
        let expectedOut = ["0,1","1,1","2,1"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.O)
    }
    
    func testVerticalIndex3() {
        let input = [[Mark.X, Mark.O, Mark.O],
                     [Mark.empty, Mark.X, Mark.O],
                     [Mark.X, Mark.X, Mark.O]]
        let expectedOut = ["0,2","1,2","2,2"]
        let realOutput = Game().didAnyoneWin(input)
        XCTAssertEqual(realOutput.1, expectedOut)
        XCTAssertEqual(realOutput.0, Mark.O)
    }
    
    func testStringIndex() {
        let input = "a,a"
        let expectedOutput = (0,0)
        let realOutput = input.getIndex()
        XCTAssertEqual(expectedOutput.0, realOutput.0)
        XCTAssertEqual(expectedOutput.1, realOutput.1)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
