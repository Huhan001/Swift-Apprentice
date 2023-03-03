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
//learning continue

sum = 0

for row in 0...8 {
    if row % 2 == 0 {
        continue
    } else {
        sum += row
    }
    print(row, sum)
}

sum = 0

for row in 0...8 {
    for column in 0...8 {
        if  column >= row {
            continue
        } else {
            sum = row * column
        }
    }
}
print(sum)

sum = 0
for row in 0...8 {
    for column in 0...8 where column <= row {
        sum = column + row
    }
}
print(sum)
// labeled statements

sum = 0
outerLoop: for row in 0...8 {
innerLoop: for colum in 0...8{
    if row == colum {
        continue outerLoop
    }
    sum += row * colum
}
}
print(sum)
// one example

sum = 0
rowLoop: for row in 0...8 {
    columnLoop: for column in 0...8 {
        if row == column {
            continue rowLoop
    }
        sum += row * column
  }
}
print(sum)
sum = 0

print(number)
var timber = 1...10

timberLoop: for tim in timber {
    print(sqrt(Double(tim)))
}

for tim in timber {
    print(tim * tim)
}
//---------------------- challanges
sum = 0
//innerLoop: for row in 0..<8 where row % 2 == 0 {
   // continue innerLoop ( you can't use both where and continuue together
//};for col in 0..<8 {
//    sum += row * col
//}
outerLoop: for x in 0..<8 {
innerLoop: for y in 0..<8 {
    if x % 2 == 0 {
        continue outerLoop
    } else {
        sum += x * y
    }
}
}
print(sum)
// -------------------------- challenges

outerLoop: for row in 0...8 where ((row % 2) != 0) {
    for col in 0...8 {
        sum += row * col
    }
}
print(sum)
// --------------------------- Again
sum = 0

for x in 0..<8 where x % 2 != 0 {
    for y in 0..<8 {
        sum += x * y
    }
}
print(sum)
// ----------------- Good ( done it ! )


// switch statements

sum = 10
switch sum {
case 8:
    print("Nah!")
case 9:
    print("no, no, no")
case 10:
    print("got it")
default:
    print("whatever")
}
// advanced swift page 104
// multiple statement switch

let hourOfday = 12
var TimeofDay = ""

switch hourOfday {
case 1,2,3,4,5,6:
    TimeofDay = "Morning time"
case 7,8,9,10:
    TimeofDay = "Afternoon time"
case 11,12,13,14,15:
    TimeofDay = "Noon time"
case 16,17,18,19:
    TimeofDay = "Evening time"
case 20,21,22,23,24:
    TimeofDay = "Late night"
default:
    TimeofDay = "Goodnight"
}
print(TimeofDay)

// using ranges
switch hourOfday {
case 1...6:
    TimeofDay = "Morning time"
case 7...10:
    TimeofDay = "Afternoon time"
case 11...15:
    TimeofDay = "Noon time"
case 16...19:
    TimeofDay = "Evening time"
case 20...24:
    TimeofDay = "Late night"
default:
    TimeofDay = "Goodnight"
}
print(TimeofDay)

// with where clause
switch hourOfday {
case _ where hourOfday % 2 == 0:
    print("testing")
default:
    print("notworking")
}

// you can also use let in case as a means to assign a number
//partial matching

let cordinates = (x: 12, y: 34, z: 90) // avoid duplicates
switch cordinates {
case (0,0,0):
    print("origin")
case (_,0,0):
    print("x-axis")
case (0,_,0):
    print("y-axis")
case (0,0,_):
    print("z-axis")
default:
    print("partial matching")
}

// complex switch

switch cordinates {
case let(x,y,_) where y > x:
    print("y axis is bigger \(y)")
case let(x,y,_) where x > y : // when put like this it will be wihout scope when put like (x,y,z ) therefore you must engage let as a declaration to have it in scope
    print("x is bigger than y \(x)") // its a matter of scope
case let(x,_,z) where z > x:
    print("z is bigger \(z)")
default:
    print("strange")
}
// excircise page 108

var age = Int.random(in: 1...20)
switch age {
case 0...2 :
    print("infant")
case 3...5:
    print("todler")
case 6...10:
    print("kid")
case 11...13:
    print("pre-interger")
case 15...25:
    print("legal adult")
default:
    break
}

//excercise 2
var tup = (name: "yugo", age: 35)
switch tup {
case let(name, age) where name == "dan":
    print("got you \(name) aged \(age)")
case let(name, age) where age > 30:
    print("this could be you \(name), aged \(age)")
default:
    break
}

//challenges
sum = 0
for i in sum...5 {
    sum += i
}
print(sum)
// another one
var moth = ""
while moth.count < 10 {
    moth += "a"
}
print(moth)
// counting backwards
// chapter 5 functions page 111.

//------------------------ basics
func operningGreetings() {
    print("Howdy partner !")
}
operningGreetings() // --------------- 1

func multi(value: Int) {
    print("\(value) * 5 = \(value * 5)")
}
multi(value: 20) // ------------------ 2

func multip(add: Int, subs: Int) {
    print("\(add + 10) is not the same as \(subs - 20)")
}
multip(add: 23, subs: 90) // ------------- 3

func multipl(multiply: Int, whe crying: Int) {
    print("honest just testing this idea out \(multiply) and \(crying)")
}
multipl(multiply: 23, whe: 22)
// ---------------------------------------- 4 external name

func multiplll(_ ext: Int, _ nothing: Int) {
    print("\(ext) like that \(nothing)")
}
multiplll(34, 30) // -------------------- 5 removing the outername wiht a dash _

func provideDefault(_ number: Int, default num: Int = 234) {
    print("this is almost like a declaration \(number + num)")
}
provideDefault(1,default: 90) // so it wont show up uless prompted to do so, the default parameter.

// functions with return values

func withReturnvalue(defaul: Int = 10, to be: Int) -> Int {
    return (defaul * be)
}

let conta = withReturnvalue(defaul: 90, to: 78) // must follow the order of invocation in the parameter setting
// page 116 ending here today.

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, qoutient: Int) {
    return (number * factor, number/factor)
} // multiple return statements, mind the brackets on both return and the multiple returns, best give them names
// for simple function you do not have to include return, you can go without it, but for more complex function, then you will need to include the return statement
let results = multiplyAndDivide(2, by: 9)

//-------------------------------- Advanced function parameter handling
func increment(_ value: inout Int) {
    value += 1
    print(value)
}
increment(&sum) // you need to add inout followed by an amper & in the paramaters to stop the compiler from copying and then spitting out the number.

func firstNameLastname(first: String, last: String) -> (String,String) {
    return (first, last)
}
firstNameLastname(first: "Humphrey", last: "Hanson")

//..
func calculatefullName(first: String, last: String) -> String {
    return first + last
}
let naming = calculatefullName(first: "Hump", last: "hrey")
//..
func CalculatefullName(first: String, last: String) -> (String, String, Int) {
    let inside = last+first
    return (first,last,inside.count )
}

print(CalculatefullName(first: "Humphrey", last: "Hanson"))
//.. calculated and gave out the lengh of the string

func addingBythree(value: inout Int) {
    print(value += 3)
}
addingBythree(value: &sum) // awesome

//.. funcitons as variables
var function = calculatefullName
function("humphr", "hanson")

var addiotional = addingBythree
addiotional(&sum) // you will have to do it yourself adding &
// you can pass functions as variables so long as you do not include their brackets
// page 121
