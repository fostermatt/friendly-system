protocol Animal {
	var numberOfLegs: Int { get }
}

protocol Pet: Animal {
	var cuddlyName: String { get }
}

struct Dog: Pet {
	var numberOfLegs = 4
	var cuddlyName: String
}