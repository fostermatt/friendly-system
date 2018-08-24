//import Darwin
import Foundation


var todo: [String] = ["Finish collections course", "Buy groceries", "Respond to emails", "Pick up dry cleaning", "Order books online", "Mow the lawn"]

for task in todo {
	print(task)
}

// Ranges

for number in 1...10{
	print("\(number)  times 5 equals \(number*5)")
}

// While Loop
print()

var x = 0

while x <= 20{
	print(x)
	x += 1
}

var index = 0
while index < todo.count {
	print(todo[index])
	index += 1
}

// Repeat While
var counter = 1

while counter < 1 {
	print("I'm inside the while loop")
	counter += 1
}



repeat {
	print("I'm inside the repeat loop!")
	counter += 1
} while counter < 1

// If Statements
print()

var temperature = 14

if temperature < 12 {
	print("It's getting cold. Lets get taht jacket out.")
} else if temperature < 18 {
	print("It's getting chilly. I recommend wearing a light sweater")
} else {
	print("It feels great outside! A t-shirt will do.")
}

// Logical Operators

if temperature > 7 && temperature < 12 {
	print("Might want to wear a scarf with that jacket")
}

var isRaining = false
var isSnowing = false

if isRaining || isSnowing {
	print("Get out those boots!")
}


if !isRaining {
	print("Yay the sun is out")
}

if isRaining && isSnowing && temperature < 2 {
	print("Put some gloves on!")
}

if (isRaining || isSnowing) && temperature < 2 {
	print("Definetly get the leather gloves out!")
}

// Switch Statement
print()

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]

for airportCode in airportCodes{
	switch airportCode {
	case "LGA", "JFK": print("New York")
	case "LHR", "LGW": print("London")
	case "CDG", "ORY": print ("Paris")
	case "HKG": print ("Hong Kong")
	default: print("I don't know which city that airport is in!")
	}
}

//import GameKit
//let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound:150)
let randomTemperature = Int(arc4random_uniform(UInt32(150)))

switch randomTemperature {
case 0..<32: print("Currently \(randomTemperature). Forget clothes, you are basically in a popsicle")
case 32..<45: print("Currently \(randomTemperature). It's quite cold. You'll need a jacket")
case 45..<70: print("Currently \(randomTemperature). It's a bit chilly. I recommend wearing a light sweater")
case 70...100: print("Currently \(randomTemperature). It's quite hot! T-shirt weather!")
default: print("Currently \(randomTemperature). Don't even bother.")
}


for n in 1...100{
	var myOutput: String = ""
	if (n % 3 == 0) {
		myOutput += "Fizz"
	}
	if (n % 5 == 0) {
		myOutput += "Buzz"
	}
	if (myOutput == ""){
		myOutput = String(n)
	}
	print(myOutput)
//	if(myOutput == "FizzBuzz"){
//		print(n)
//	}
}









