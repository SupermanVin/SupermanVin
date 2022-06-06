//
//  ViewController.swift
//  concurrency_aync
//
//  Created by Vinod Veerachamy on 02/06/21.
//

import UIKit

class ViewController: UIViewController {
	
	class DoCalculation {
		func doCalc() {
			let x = 100
			let y = x * x
			_ = y/x
		}

		func performCalculation(iterations:Int, tag: String)  {
			let start = CFAbsoluteTimeGetCurrent()
			for _ in 0 ..< iterations {
				self.doCalc()
			}
			let end = CFAbsoluteTimeGetCurrent()
			print("time for \(tag):\(end-start)")
		}

	}

	override func viewDidLoad() {
		super.viewDidLoad()
		
		
//		let concurrentQueue = DispatchQueue(label: "cqueue.vinod.kumar", attributes: .concurrent)
//		let serialQueue = DispatchQueue(label: "squeue.vinod.kumar")
////
////
////
//		let cqueue = DispatchQueue(label:"cqueue.vinod.kumar", attributes: .concurrent)
//
//		let calculation = DoCalculation()
//
//
//		let c = {calculation.performCalculation(iterations: 1000, tag: "async11")}
//
//		cqueue.async(execute: c)
//
//		cqueue.async {
//			calculation.performCalculation(iterations: 1000000, tag: "async1")
//		}
//
//		cqueue.async {
//			calculation.performCalculation(iterations: 1000, tag: "async2")
//		}
//
//		cqueue.async {
//			calculation.performCalculation(iterations: 100000, tag: "async3")
//		}
//
//	}
	
	let  x = returnMultipleValue(a: 22, b: "ITs my favorite number")
	print(x)
	
	}
	
	func returnMultipleValue(a:Int , b:String) -> (Int,String) {
		
		(a,b)
		
	}

}


class Vechile {
	
	var hasFourWheel:Bool?
	var Engine:String?
	var doors:String?
	
	class Car {
		var name = "Swift"
		var Engine = "4cylinder"
		var doors = "AutoLock"
	}
	
}







