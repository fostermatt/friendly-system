// functions-as-first-class-citizens

func addTwo(to a: Int) -> Int {
	return a + 2
}

let addition = addTwo

var result1 = addition(1)

// higher-order-functions

extension String {
	func transform(_ trans: (String) -> String) -> String {
		return trans(self)
	}
}

func removeVowels(from value: String) -> String {
	var output: String = ""
	for char in value {
		if !(char == "a" || char == "A" ||
			char == "e" || char == "E" ||
			char == "i" || char == "I" ||
			char == "o" || char == "O" ||
			char == "u" || char == "U") {
			output.append(char)
		}
	}
	
	return output
}

let result = "Hello, World!".transform(removeVowels)

// using-closure-expressions

func double(_ i: Int) -> Int {
	return i * 2
}

let doubler = double
let doubledValues = [1,2,3,4].map { $0 * 2 }

// using-map

let numbers = [1,2,3,4,5]

let numberStrings = numbers.map { String($0) }

// using-flat-map

let numbers2 = [[1,2,3], [4,5,6], [7,8,9]]

let flattenedNumbers = numbers2.flatMap { $0 }





