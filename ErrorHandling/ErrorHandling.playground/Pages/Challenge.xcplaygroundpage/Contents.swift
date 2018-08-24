enum ParserError: Error {
	case emptyDictionary
	case invalidKey
}

struct Parser {
	var data: [String : String?]?
	
	func parse() throws {
		guard let myData = data else {
			throw ParserError.emptyDictionary
		}
		let keys = data?.keys
		for key in keys! {
			print(key)
		}
		guard let isValid = keys?.contains("someKey") else {
			throw ParserError.invalidKey
		}
		if !isValid {
			throw ParserError.invalidKey
		}
		print(myData)
	}
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

do {
	try parser.parse()
} catch ParserError.emptyDictionary {
	print("Empty Dictionary")
} catch ParserError.invalidKey {
	print("Invalid Key")
}