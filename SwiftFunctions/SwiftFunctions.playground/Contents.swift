// Area calculation for room #2

let secondLength = 14
let secondWidth = 8

let secondArea = secondLength * secondWidth

// Area calculation for room #1

func area(length: Int, width: Int) -> Int {
	let areaOfRoom = length * width
	return areaOfRoom
}

let areaOfFirstRoom = area(length: 12, width: 10)
let areaOfSecondRoom = area(length: 15, width: 22)


func someFunction() {}

func remove(havingValue value: String) {
	print(value)
}

remove(havingValue: "A")

// Default Values

func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, areaOfRoom: Int, carpetColor: String) {
	// Gray carpet - $1/sq ft
	// Tan carpet = $2/sq ft
	// Deep Blue carpet - $4/sq ft
	let areaOfRoom = area(length: length, width: width)
	
	var price = 0
	
	switch color {
	case "gray": price = areaOfRoom * 1
	case "tan": price = areaOfRoom * 2
	case "blue": price = areaOfRoom * 4
	default: price = 0
		
	}
	return (price, areaOfRoom, color)
}

let result = carpetCostHaving(length: 10, width: 20)

result.0
result.1
result.2

result.price
result.areaOfRoom
result.carpetColor

// Scope

func arrayModifier(array: [Int]) {
	var arrayOfInts = array
	arrayOfInts.append(5)
	
	var secondArray = arrayOfInts
}

var arrayOfInts = [1,2,3,4]
arrayModifier(array: arrayOfInts)
arrayOfInts

func someFunction(_ test: Int) {}

someFunction(5)

// last challenge

func coordinates(for location: String) -> (Double, Double) {
	switch location {
	case "Eiffel Tower": return (48.852, 2.2945)
	case "Great Pyramid": return (29.9792, 31.1344)
	case "Sydney Opera House": return (33.8587, 151.2140)
	default: return (0,0)
	}
}







