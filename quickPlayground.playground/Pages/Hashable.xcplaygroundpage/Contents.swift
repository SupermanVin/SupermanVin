//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


enum luckyNumbers:Int {
	case myNumber = 23
	case otherNumber = 33
}

var myLuckyNumber = luckyNumbers.myNumber
switch myLuckyNumber {
case .myNumber:
	print("your lucky number is between 0 to 23\(myLuckyNumber)")
case .otherNumber:
	print("your lucky number is between \(myLuckyNumber)")

}
