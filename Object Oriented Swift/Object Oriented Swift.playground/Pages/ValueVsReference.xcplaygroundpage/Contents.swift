struct User {
	var fullName: String
	var email: String
	var age: Int
}

var someUser = User(fullName: "Matt Foster", email: "matt@fostermatt.com", age: 37)

var anotherUser = someUser

someUser.email = "mattfoster@unlv.edu"

class Person {
	var fullName: String
	var email: String
	var age: Int
	
	init(name: String, email: String, age: Int){
		self.fullName = name
		self.email = email
		self.age = age
	}
}

var somePerson = Person(name: "Tim Cook", email: "time.cook@apple.com", age: 54)
var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"
anotherPerson.email































































































