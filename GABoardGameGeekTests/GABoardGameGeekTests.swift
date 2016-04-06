//
//  GABoardGameGeekTests.swift
//  GABoardGameGeekTests
//
//  Created by Geoffrey Amey on 4/3/16.
//  Copyright © 2016 Geoffrey Amey. All rights reserved.
//

import XCTest
@testable import GABoardGameGeek

class GABoardGameGeekTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThing() {

        // Verify the Full Initializer
        let fullTCtor = BoardGame(objectId: 123, name: "The Sort Name", sortIndex: 5)
        XCTAssertEqual(fullTCtor.name, "The Sort Name")
        XCTAssertEqual(fullTCtor.sortName, "Sort Name")

        // Verify the Convenience Initializer
        let convenienceCtor = BoardGame(objectId: 321, name: "Convenience")
        XCTAssertEqual(convenienceCtor.name, "Convenience")
        XCTAssertEqual(convenienceCtor.sortName, "Convenience")

        // Verify that a bad sortIndex won't cause problems
        XCTAssertEqual(BoardGame(objectId: 1, name: "ZeroIndex", sortIndex: 0).sortName, "ZeroIndex")
        XCTAssertEqual(BoardGame(objectId: 1, name: "NegativeIndex", sortIndex: -5).sortName, "NegativeIndex")
        XCTAssertEqual(BoardGame(objectId: 1, name: "TooLargeIndex", sortIndex: 100).sortName, "TooLargeIndex")
    }

}
