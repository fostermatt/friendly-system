// Standard Library Functions

let values = [1,2,3,4,5]

var newArray = Array<Int>()

for number in values {
	newArray.append(number * 2)
}

let doubledNumbers = values.map { $0 * 2 }

// Map

extension Array {
	func customMap<T>(_ transform: (Element) -> T) -> [T] {
		var result = [T]()
		
		for x in self {
			result.append(transform(x))
		}
		
		return result
	}
}

let integerValues = ["1", "2", "3", "4", "5"].customMap { Int($0) }

import Foundation

struct Formatter {
	static let formatter = DateFormatter()
	
	static func date(from string: String) -> Date? {
		formatter.dateFormat = "d MMM yyy"
		return formatter.date(from: string)
	}
}

let dateStrings = ["20 Oct 1978", "11 Jan 1947", "28 Mar 2002"]

let dates = dateStrings.customMap { Formatter.date(from: $0) }
print(dates)





















