import XCTest

import serviceTests

var tests = [XCTestCaseEntry]()
tests += serviceTests.allTests()
XCTMain(tests)
