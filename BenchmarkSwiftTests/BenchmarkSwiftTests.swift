//
//  BenchmarkSwiftTests.swift
//  BenchmarkSwiftTests
//
//  Created by Leon Dobnik on 21/05/16.
//  Copyright © 2016 Leon Dobnik. All rights reserved.
//

import XCTest
@testable import BenchmarkSwift

class BenchmarkSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPerformanceFinal() {

        self.measureBlock {

			let methodInvokerFinal = MethodInvokerFinal()

			for _ in 1...1000000 {
				methodInvokerFinal.callMe()
			}
        }
    }

	func testPerformanceSwift() {

		self.measureBlock { 

			let methodInvokerSwift = MethodInvokerSwift()

			for _ in 1...1000000 {
				methodInvokerSwift.callMe()
			}
		}
	}

	func testPerformanceObjc() {

		self.measureBlock { 

			let methodInvokerObjc = MethodInvokerObjc()

			for _ in 1...1000000 {
				methodInvokerObjc.callMe()
			}
		}
	}
}