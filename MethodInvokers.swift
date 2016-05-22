//
//  SumCalculator.swift
//  BenchmarkSwift
//
//  Created by Leon Dobnik on 21/05/16.
//  Copyright © 2016 Leon Dobnik. All rights reserved.
//

import Foundation

/**
 * Static method invoker - fastest solution
*/
public class MethodInvokerFinal {

	private var x: Int = 0

	final func callMe() {
		x += 1
	}

	func getResult() -> Int {
		return x
	}
}

/* END of Static method invoker - fastest solution */

/**
 * Method invoker Swift
*/
class MethodInvokerSwift {

	var x: Int = 0

	func callMe() {
		x += 1
	}

	func getResult() -> Int {
		return x
	}

	func dummyFunction() {
		print("Dummy function - MethodInvokerSwift")
	}
}

class MethodInvokerSwiftFirstChild: MethodInvokerSwift {

	override func dummyFunction() {
		print("Dummy function - MethodInvokerSwiftFirstChild")
	}
}

class MethodInvokerSwiftGrandChild: MethodInvokerSwiftFirstChild {

	override func dummyFunction() {
		print("Dummy function - MethodInvokerSwiftGrandChild")
	}
}

/* END of invoker Swift */

/**
* Method invoker @objc
*/
@objc class MethodInvokerObjc:NSObject {

	var x: Int = 0

	@objc func callMe() {
		x += 1
	}

	func getResult() -> Int {
		return x
	}

	func dummyFunction() {
		print("Dummy function - MethodInvokerObjc")
	}
}

class MethodInvokerObjcFirstChild: MethodInvokerObjc {

	override func dummyFunction() {
		print("Dummy function - MethodInvokerObjcFirstChild")
	}
}

class MethodInvokerObjcGrandChild: MethodInvokerObjcFirstChild {

	override func dummyFunction() {
		print("Dummy function - MethodInvokerObjcGrandChild")
	}
}

/* Method invoker @objc */