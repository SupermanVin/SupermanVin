
import Foundation


class MySingledon {
	static let sharedInstance = MySingledon()
	var name = ""

}

let myClassA = MySingledon.sharedInstance
let myClassB = MySingledon.sharedInstance
let myClassC = MySingledon.sharedInstance

myClassA.name = "Vinod"
 
print(myClassA.name)
print(myClassB.name)
print(myClassC.name)

myClassC.name = "Ram"

print(myClassA.name)
print(myClassB.name)
print(myClassC.name)


