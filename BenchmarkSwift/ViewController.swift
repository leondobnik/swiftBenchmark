//
//  ViewController.swift
//  BenchmarkSwift
//
//  Created by Leon Dobnik on 21/05/16.
//  Copyright © 2016 Leon Dobnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

	/*	let methodInvoker = MethodInvokerChild()

		let startDate = NSDate()

		for _ in 1...1000000 {
			methodInvoker.callMe()
		}

		print("Value: \(methodInvoker.x)")

		let endDate = NSDate()

		let flags = NSCalendarUnit.Nanosecond

		let diff = NSCalendar.currentCalendar().components(flags, fromDate: startDate, toDate: endDate, options: [])

		print((Double(diff.nanosecond) / 1000000000.0))*/
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}