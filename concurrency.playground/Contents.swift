import Cocoa





class DoCalculation {
	func doCalc() {
		var x = 100
		var y = x * x
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

let concurrentQueue = DispatchQueue(label: "cqueue.vinod.kumar", attributes: .concurrent)
let serialQueue = DispatchQueue(label: "squeue.vinod.kumar")



let cqueue = DispatchQueue(label:"cqueue.vinod.kumar", attributes: .concurrent)

let calculation = DoCalculation()


//let c = {calculation.performCalculation(iterations: 1000, tag: "async1")}
//
//cqueue.async(execute: c)

cqueue.async {
	calculation.performCalculation(iterations: 1000000, tag: "async1")
}

cqueue.async {
	calculation.performCalculation(iterations: 1000, tag: "async2")
}


cqueue.async {
	calculation.performCalculation(iterations: 100000, tag: "async3")
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

var myVechile = Vechile()

myVechile.Engine = "4Cylinder"

var otherVechile = Vechile.Car()
otherVechile.Engine = "4"

