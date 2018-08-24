// Binary Operators

let height: Int = 12		// in feet
let width: Int = 10			// in feet

let area = height * width	// Area in sq feet

// 1 sq meter = 1 sq foot / 10.764

let areaInMeters = Double(area)/10.764

// Equals Operator (Note: Different from assignment operator

let string1 = "Hello!"
let string2 = "Hello!"
let string3 = "hello"

string1 == string2
string1 == string3

// Not equal

string1 != string2
string1 != string3

1 > 2
2 > 1

"a" > "b"

/*
	-------------------
	Operator Precedence
	-------------------
*/

var x = 100 + 100 - ((5 * 2) / 3) % 7

// Unary Operators

var levelScore = 0
levelScore = levelScore + 1
levelScore += 1
levelScore -= 1

// NOT operator

let on = true
let off = !on

1 != 2

