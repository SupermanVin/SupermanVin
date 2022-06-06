import Cocoa

let json = """
{
  "phoneType":"Cordless",
  "brandName": "PanaSonic",
  "isSimAvailable": true,
  "price":2500,
  "color":"white"
	 
}
""".data(using: .utf8)!

struct Phone:Decodable {
	
	var phoneType:String
	var brandName:String
	var isSimAvailable:Bool
	var price:Int
	var color:String

}

let phoneDetails = try! JSONDecoder().decode(Phone.self, from: json)
print(phoneDetails.brandName,phoneDetails.color)


func sum(a:Int , b: Int) -> Int {
	return (a+b)
}

sum(a: 100, b: 200)
