// Generics


var d = 10
var e = 12

var g = "matt"
var h = "foster"

func swapValues<T>(_ a: inout T, _ b: inout T) {
	let tempA = a
	a = b
	b = tempA
}

swapValues(&d, &e)
swapValues(&g, &h)

func transform<T, U>(arg: T, operation: (T) -> U) -> U {
	return operation(arg)
}

func stringToInt(_ a: String) -> Int {
	guard let value = Int(a) else { fatalError() }
	return value
}

transform(arg: "9", operation: stringToInt)

func intToString(_ a: Int) -> String {
	return String(a)
}

transform(arg: 12, operation: intToString)

// Middle challenge in Generics
func map<T, U>(array arg: [T], operation: (T) -> U) -> [U] {
	var tempArray: [U] = []
	for value in arg {
		tempArray.append(operation(value))
	}
	return tempArray
}

func doubleThis(_ a: Int) -> Int {
	return a * 2
}

let blah = [1, 2, 3, 4, 5]

map(array: blah, operation: doubleThis)
/////////////////////////////



func findKey<Key, Value: Equatable>(for value: Value, in dictionary: Dictionary<Key, Value>) -> Key? {
	for (iterKey, iterValue) in dictionary {
		if iterValue == value {
			return iterKey
		}
	}
	
	return nil
}

let airportCodes = ["CDG": "Charles de Gaulle", "HKG": "Hong Kong International Airport"]

findKey(for: "Hong Kong International Airport", in: airportCodes)

enum Snack {
	case gum
	case cookie
}

struct Item {
	let price: Int
	let quantity: Int
}

extension Item: Equatable {
	static func ==(lhs: Item, rhs: Item) -> Bool {
		return lhs.price == rhs.price && lhs.quantity == rhs.quantity
	}
}

let inventory: [Snack: Item] = [
	.gum: Item(price: 1, quantity: 5),
	.cookie: Item(price: 2, quantity: 3)
]

let someItem = Item(price: 2, quantity: 3)

findKey(for: someItem, in: inventory)



// Class Constraints

class Shape {}

func center<T: Shape>(of shape: T) {
	print("Called")
}

let testShape = Shape()
center(of: testShape)

class Square: Shape {}
let testSquare = Square()
center(of: testShape)

//class View{}
//let testView = View()
//center(of: testView)

func centerOf(_ shape: Shape) {
	print("Center")
}

centerOf(testShape)
centerOf(testSquare)




































