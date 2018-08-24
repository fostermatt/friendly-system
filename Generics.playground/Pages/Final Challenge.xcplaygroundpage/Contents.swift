protocol PrefixContaining {
	func hasPrefix(_ prefix: String) -> Bool
}

extension String: PrefixContaining {}

extension Array where Element: PrefixContaining {
	
	func filter(byPrefix prefix: String) -> [Element] {
		var results: [Element] = []
		
		for item in self {
			if item.hasPrefix(prefix) {
				results.append(item)
			}
		}
		
		return results
	}
}

let test = ["aa", "ba", "ca", "ab"]
let result = test.filter(byPrefix: "a")






