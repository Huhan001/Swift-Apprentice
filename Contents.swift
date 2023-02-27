// proceeding from playgounds
// page 49

let number: Int = 1_000_000
var twenty: Double = 90.89
// now changing variable

twenty = 9.34 // good
// have a good naming convention
var timsAge: Int = 34
var tims: Int = 35 // bad naming convention to avoid

// using unicorn characters but this is bond to be complicated if done irationally
timsAge += 90
timsAge -= 35
timsAge /= 2
timsAge *= 3
// this is refered to as incement and decrememnt

// excercise page 51
// constants are written as let and not otherwise.
let evenNumber: Int = 90
let oddNumber: Int = evenNumber
//evenNumber = 89

// page 52 exercises
let myAge: Int = 29
var dogAge: Int = 3
dogAge += 1

let averageRating1: Int = 20
let averageRating2: Int = 34
let averageRating3: Int = 90

let totalRating: Int = (averageRating1 + averageRating3 + averageRating2) / 3
print(totalRating)

import Foundation
let generated: UInt32 = arc4random() // creation of random numbers but its dubbed a premitive move ther ewill be a more sofisticated move elsewhere

// types
// covnersion
let john: Int = 90
let sarah: Double = 45.4
let total: Double = Double(john) * sarah // this is good same goes for vice versa
let addiotion: Int = Int(sarah) - john

// inference
// you do not have to specify , swift does that for you, however you can opt to also use as operand to change between types pages 60
let zack = 89.3
let james = 78
var adition = 34.4 as Float
let fun = 34 as Double

// strings
// at page 64, hopefully pick this up later. 
let characters: Character = "r"
let dogs: String = "its a rabrador retriever"
var cat = "just a cool cat" // type inference example

// string addition or concatenation
var car: String
car = "hello there " + "what are you doing"
print(car)
print(car + String(characters)) // you can add characters to strings but you must change them before end.

// string interpolation is a step above the normal swift addition
var message = "hello my name is \(cat)"
var messaging = "how old is james really, \(james)"
//long string code is made possible with """

// tuples 2d or 3d values
var coordinates: (Int, Int) = (2,3)
var doublecoordinates = (2.1,4.5)
let singlecoordinate: (Double, Double) = (x: 23.4,y: 55.5)
// how to access tuples
print(coordinates.0, doublecoordinates.1)
let tryagain = (x: 23, y: 45, z: 13) // when you hard code the type do not expect for the naming convention to work when you try to access the values from within
let tried: (Int, Int) = (x: 34,  y: 5) // with this you need to use the integers print(tried.0)
print(tryagain.z)

var (x1, x2, _) = tryagain // use underscore to ignore number or input
print(x1,x2)
//page 71
let a: Int16 = 12
let b: UInt8 = 255
let c: Int32 = -100000
let answer = Int(a) + Int(b) + Int(c)  // answer is an Int

// type eliases ( creating your own types )
typealias mama = String
var dad: mama = "my dad"

typealias doublecoord = (Double, Double)
var locale: doublecoord = (23.2, 45.3) // helps simplfy data
// page 77

// boolean
var yes: Bool = true
var no = false

var jenking = (1 == 2) // and so is !=
var empty = true && false // adittion logic
var check = true || false // multuplication

// understanding toogle, a way to switch from yes to know like a switch would
check.toggle()
check.toggle()

// if statements
if yes{
    print("this is only for testing purposes \(check)")
}
// another else clause
cat = "meow"
if cat == "mooo" || cat == "whowho" {
    print("we found what we are looking for")
} else if cat == "moew"{
    print("we got him this time")
} else if cat == "meow"{
    print("tom the cat!")
} else {
    print("this has got to end")
}

// known as short circuting, swift only ascertains the first and not the sencond expresion in a compiled if statment with two or more options, example below.
if false || 2 < 4 {
    print("second expresion was executed")
} else {
    print("it wasnt executed")
}

// code challange
//You earn $25 for every hour up to 40 hours and $50 for every hour after that.

var price = 25
var newPrice = 50
var workedHours = 45

if workedHours > 40 {
    print("the individual should get paid \(workedHours * newPrice)")
} else if workedHours < 40 {
    print("give them \(workedHours * price) alone")
} else {
    print("pay them nothing,  for they haven't worked a day in their life")
}
// refined

if workedHours > 40 {
    let real = (workedHours - (workedHours - 40)) * price
    let extra = (workedHours - 40) * newPrice
    print("Thier true value payment is \(real + extra)")
} else if workedHours < 40 {
    let get = workedHours * price
    print("Give them this much \(get)")
} else {
    print("Pay them \(workedHours * price)")
}

// tenary operators page 85
//var (d, e) = (2, 4)
var min = 0
var max = 0
min = 2 < 4 ? 2 : 4
max = 2 > 4 ? 2 : 4 // frist number is true while the second is false, got you

// loops
//while loops
var sum = 10
while sum < 10000 {
    sum = sum + (sum - 3)
} // this is a while looop
// new type of loop
sum = 10
repeat {
    sum = sum + (sum - 1)
} while sum < 10

// they differ by results so you must be careful with what you intend to achieve. 
//adding break mechanism

while true {
    sum = sum + ( sum - 1)
    if sum >= 100 {
        break
    }
} // adding a break mechanism in between

var counter = 0
while counter < 10 {
    counter = counter + 1
    print("counter equals to \(counter)")
}

var roll = 0
counter = 0
repeat {
    roll = Int.random(in: 0...5)
    counter += 1
    print("after \(counter) rolls, roll is \(roll)")
    if roll == 0 {
        break
    }
} while true

/*let firstName = "Matt"
if firstName == "Matt" {
  let lastName = "Galloway"
} else if firstName == "Ray" {
  let lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName // because its out of scope
*/

// attempt at making a snake and ladder game
//var dice = Int.random(in: 0...6)
var currentPosition = 0

repeat {
    var 🎲 = Int.random(in: 0...6)
    🎲
    print(" 🎲 \(🎲)")
    currentPosition += 🎲
    if currentPosition == 3 {
        currentPosition = 15
        print("🪜")
    } else if currentPosition == 17 {
        currentPosition = 11
        print("🐍 \(currentPosition)")
    } else if currentPosition == 12 {
        currentPosition = 27
        print("🪜")
    } else if currentPosition == 48 {
        currentPosition = 10
        print("🐍 \(currentPosition)")
    } else if currentPosition == 52 {
        currentPosition = 2
        print("🐍\(currentPosition)")
    } else if currentPosition > 100 {
        var rollback = (currentPosition - 100)
        currentPosition -= (rollback * 2)
        print("\(currentPosition) 🔙")
    } else if currentPosition == 98 {
        currentPosition = 0
        print("🐍 \(currentPosition)")
    } else if currentPosition == 100 {
        print(" Game over ✨ \(currentPosition)")
        break
    }
} while true


// thats a good snake and ladder game
// challenge years
print(sqrt(2))
print(sqrt(4))
// advanced control flow page 94
// countable ranges

let cloaserange = 1...5 // closed because it is inclusive of 1 to 5 alon
let halfOpenedrange = 1..<5 // 1 to 4 but not including 5 is the meaning of this range

var count = 0
var team1counter = 0
var team2counter = 0
repeat {
    var 🎲 = Int.random(in: 1...6)
   // var team1counter = 0
   // var team2counter = 0
    var team1 = Int.random(in: 1...6)
    var team2 = Int.random(in: 1...6)
    //var count = 0
    team1
    team2
    🎲
    count += 1
    if team1 > team2 {
        print("team 1 has the lead")
        team1counter += 1
    } else if team2 > team1 {
        team2counter += 1
        print("team 2 has the lead")
    } else if 🎲 > team2 {
        print("Team2 Nullyfied")
        team2counter -= 1
    } else if 🎲 > team1 {
        print("Team1 nullyfied")
        team1counter -= 1
    }
    
    if count == 7 {
        print("game over, team1  got \(team1counter), while team2 got \(team2counter)")
    }
} while count <= 6

// for loop in page 96
let kevin = 10
var sums = 0
for i in 1...kevin { // full range
    sum += i
}

for _ in 1...sum {
    sum -= 1
}

print(sum)
for i in 1...kevin where i % 2 == 0 {
    sum += i
}
//page 100/555
