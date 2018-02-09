//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Michael Myles on 2/5/18.
//  Copyright © 2018 Michael Myles. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_TakesTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertNotNil(item, "item should not be nil")
        
    }
    func test_Init_TakesTitleAndDescription() {
        _ = ToDoItem(title: "Foo",
                     itemDescription: "Bar")
    }
    
    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "",
                            timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0,
                       "should should set timestamp")
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
        let location = Location(name: "Foo")
    }
    
    func test_Init_SetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "",
                            location: location)
        
        XCTAssertEqual(item.location?.name,
                       location.name,
                       "should set location")
    }
    
    func test_EqualItems_AreEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Foo")
        
        
        XCTAssertEqual(first, second)
    }
    
    func test_Items_WhenLocationDiffers_AreNotEqual() {
        let first = ToDoItem(title: "",
                             location: Location(name: "Foo"))
        let second = ToDoItem(title: "",
                              location: Location(name: "Bar"))
        
        
        XCTAssertNotEqual(first, second)
    }
    
}
