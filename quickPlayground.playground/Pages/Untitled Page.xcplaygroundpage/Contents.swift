import Foundation


class StringFormater {
 	enum  Error:Swift.Error {
		case emptyString
	}
	func format(_ string:String) throws -> String {
		
		guard !string.isEmpty else {
			throw Error.emptyString
		}
		return string.replacingOccurrences(of: "@2324", with: "")
	}
}

let formatter = StringFormater()
do {
	try formatter.format("Vinod@2324")
}
catch {
	print("empty string")
}


