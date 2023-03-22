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

//passing funcitons inside other functions
func anotherFunction(function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}
// understood
// the function wa spassed as the parameter nothing more. not much into the code other than the function passed as a parameter.

// documenting funcitons

/// Creting a function than reduces its number each time.
/// - paramaters
///     - a : the number
/// - thats the end of it. this is only a mere testing
func reducingFunction(reduce a: inout Int) {
    a -= 1
    // sometimes you can choose to include return or not for small functions
    // but the inout doesnt work well wiht return type Int for any for that matter,
    // is specified. -> Int/ Double/ String
}

reducingFunction(reduce: &sum)
print(sum)
reducingFunction(reduce: &sum)
print(sum)

// challanges


for index in stride(from: 20, through: 10, by: -1) {
    print(index)
}
// writing a funcitons to test whether an ouput is even or not

func oddOReven( number: Int) {
    if number % 2 == 0 {
        print("\(number) : is Even")
    }  else {
        print("\(number): is Odd")
    }
}
oddOReven(number: 101)
// done it, better yet i can follow the book and do according to it.
func isOdd(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
isOdd(number: 24)
//----------------------------
func rooting(x: Int) -> Int {
    return x * x
}
for x in stride(from: 1, to: 15, by: 3) {
    if rooting(x: x) % 2 == 0 {
        print("\(x) is even")
    } else {
        print("\(x) is odd")
    }
}
//-------------- challanges from page 127
// decoding a fabonachi

// page 129 Options.

//chapter 6: Options
// sentinel value - the value that represents the absence of another value.
// options is a type of number that either has a value or does not.
// other than using 0 or nil, which still signify a number, the optional type uses the ? (question mark) annotation to mark that a value has either a value or not.

var myFavourite: String?
myFavourite = "Savior Jesus"
print(myFavourite as Any)

let pasedInt = Int("dog")
pasedInt

var opLooking: Int? = 10
print(opLooking! + 1) // what i ddi here is unwrapped the box that held the value 10. therefore was able to work with the value 10 + 1

opLooking = nil
// how to supress the error from occuring.
if opLooking == nil {
    print("possible error")
} else {
    print("\(opLooking!)")
} // but you will have to supress this forever so long as you use the optional wrapper

// page 136 optional binding. Thank you Jesus Christ.
// optional binding
var somethingSomething: Int?
if let somethingSomething = somethingSomething,
   somethingSomething > 10 {
    print("works after both options are true")
} else {
    print("doesn't work, yet works accordingly")
}
// safe unwrapping right there.
// several let statements on the if-statement.

//introducing guard statement.
// used when fetching infoarmation from the internet but could have either nil or the api can fail.
// guard example on a function

func bringSoandSo(name: String) -> Int? {
    switch name {
    case "ramon":
        return 10
    case "jonah":
        return 12
    case "zack":
        return 15
    case "tom":
        return 20
    default:
        return nil
    }
}

var use = bringSoandSo(name: "ramon") // the esense of optionals is that theier output can never be used for compution unless you unwrap them

//--------------------
if var use = use {
    print(use)
} else {
    print("whaterver")
}
use! += 1
print(use!)
//--------------------
func tryingWhaterver(shape: String) {
    let usei = bringSoandSo(name: shape)
    if let usei = usei {
        print("\(usei) real name is \(shape)")
    } else {
        print("it was a try")
    }
}
tryingWhaterver(shape: "zack")

// now with the guar statement..

func anothertrying(shape: String) {
    let wewe = bringSoandSo(name: shape)
    guard let wewe = wewe else {
        print("was no good my boy")
        return
    }
    print("\(shape) is \(wewe)")
}
anothertrying(shape: "zack")
// guard statement starts with guard then ends wiht else
// guard is good

//------------------------------------------------ function that takes another function
func useInside(enter: Int, calc: Int) -> String {
    let vision = enter * calc
    if vision >= 25 {
        return "It is as should be"
    } else {
        return "It is not as ought to be"
    }
}

func theOutsider(function: (Int, Int) -> String, a: Int, b: Int) {
    let output = function(a,b)
    print(output)
}

theOutsider(function: useInside, a: 5, b: 4)
// --------------------------------------------------- just like that
// back to options
// nil coalecing using ?? and forcing the input from the optionals to come out

var anotheroPTional: Int? = 10
if let anotheroPTional = anotheroPTional {
    print(anotheroPTional)
} else {
    print("what've")
}
// same as

var pickingUp = anotheroPTional ?? 0 // ( the 2 question marks unwrapped the funciton)
print(pickingUp)

var user: String? = nil
// challeneges by optionals

func divisbleByWhole(number: Int, by: Int) -> Int? {
    var result: Int?
    if number % by == 0 {
        result = number / by
        } else {
            result = nil
        }
    return result
}

func unwrapSupre(number: Int, ad: Int) {
    var jetson = divisbleByWhole(number: number, by: ad)
    if let jetson = jetson {
        print("\(number) is divible by \(ad) some \(jetson) without remainder")
    } else {
        print("i could possible have tanked this")
    }
}

unwrapSupre(number: 99, ad: 3)

// nested optionals
var nestedOpitonals: Int??? = 10
print(nestedOpitonals!!!)

//collection type in section two.
// page 144 thank you Jesus. 

// chapter 7.
// collection type
// Arrays

let eevenNumber = [2,4,6,8,10] // squarebrackets to create arrays for (inferation)
let odddNumber: [String] = [] // infering an empty array
let defaultArrays = Array(repeating: 0, count: 5)

//mutable array
var listOFcHANGE = ["neema", "zack", "pendo", "jonah", "londo"]
// imagine before a game you want to make sure whether the list is not empty
print(listOFcHANGE.isEmpty) // isEmpty is a property. more on this on chapter 11
// Array is not empty but you need atleast 2 players ot start the game

if listOFcHANGE.count > 3 {
    print("start the game")
} else {
    print("wait up")
}

// getting the first name to start the game ( use property )

var firstPlayer = listOFcHANGE.first
print(firstPlayer as Any) // it becomes an optional due to if there wasnt any first variable to pic from, the property would have returned nil. so to print this you a (as Any) .
print(listOFcHANGE.last as Any)
print(listOFcHANGE.min() as Any) // returns the lowest in alphabetical order.

// there seem to be a clear difference between methods and properties.
// methods have brackets while properties don't.

// subscripting
print(listOFcHANGE[3]) // the use of brackets to access things is what is refered to as subscripting
print(listOFcHANGE[1...3])

print(listOFcHANGE.contains("jonah"))
func isEliminated(name: String) -> Bool {
    let give = !listOFcHANGE.contains(name) // using negation ! statement
    return give
}

isEliminated(name: "neema")
// adding elements to the array
listOFcHANGE.append("sebastian") // append
listOFcHANGE += ["gina"]

// adding order
listOFcHANGE.insert("jojono", at: 4) //insert at

// removing player
listOFcHANGE.removeLast() // this automatically removes the last name, which is gina in this case
listOFcHANGE.remove(at: 3) // or pick at an index to remove someone.
listOFcHANGE.lastIndex(of: "neema")

// updating and subscripting done within the range
listOFcHANGE[1...4] = ["yeyo", "wewo", "tewo", "sebo"]
print(listOFcHANGE)

// to change the element position can be achieved in several ways
//  - by removing and adding back the element to the correct position with
//      the insert method.
listOFcHANGE.remove(at: 3)
listOFcHANGE.insert("tewo", at: 2)
//  - by swapping this i will try.
listOFcHANGE.swapAt(3, 0) // done swaping
//  - can also be achieved via sort
listOFcHANGE.sort()// the differnce between sort and sorted is that sorted leaves the original value unchanged and returns a copy instead.

// iterating through an Array.

for z in listOFcHANGE {
    print(z)
}

// if you want to print the index and name
for (index, name) in listOFcHANGE.enumerated() {
    print("\(index): \(name)")
}

// creating a dictionary
var tengeDict: [String:Int] = [:] // empty dictinary
tengeDict = ["jemani":10, "paul":34, "kaaa":9, "kymber":25]
// or declare a new dictionary
var sasaDuc = ["seman":90, "namu":78, "nased":23, "hakui":12]
// you can also empty a whole dictionary with [:]

sasaDuc = [:] // just like that, it's empty.
//upon creating a nempty dictionary it is advised to improve its efficiency by designating its capacity fill.
sasaDuc.reserveCapacity(34) // like this.

print(tengeDict["paul"]!) // have to unwrap it. to view its contents within.

// this is how you update dictionaries.
sasaDuc = ["Hans":30, "Xayala":31, "Cornelious":1, "Avram": 2]
sasaDuc["Ayla"] = 4
sasaDuc.updateValue(3, forKey: "Cornelious") // another way to adding value on a dictionary. ( after updating the new value, it returns the old one just ot display, if the new one never existed, it would have returned nil )
sasaDuc

tengeDict.removeValue(forKey: "paul") // removing dictionary
tengeDict
tengeDict["jemani"] = nil // completely removes the value and list from the dictionary
tengeDict

for (_, x) in tengeDict { // (_) used to ignore
    print(x)
}
 
for x in tengeDict.keys { // you can use values too as option.
    print(x)
}
// page 164 sets. Thank you Christ Jesus. 

// declaring a set
var setDeclaring: Set<Int> = [1] // you must write set, then brackets, then the value in brackets to create sets in swift
//sets do not have literals, but you can use an array literal to declare a set

var setFromArray = [10,2,3,4,5] // an array
var setFromaray: Set<Int> = [1,2,3,4,5,6] // this is a proper set
// another way to ensure inferation is to put set outside

var creatiSets = Set([1,2,3,4,5])
print(creatiSets.contains(3))
let sometdfd = [Int]()
let fridaynight: [Int] = []

// removing first number occurance.

func removingJuFirst(number: Set<Int>) -> Set<Int> {
    var new: Set<Int> = []
    var tobe = number.first
    tobe = tobe!
    for num in number where num != tobe {
        new.insert(num)
    }
    return new
}
//var seingIsBealing = removingJuFirst(number: setFromArray)
// well done over there.
// now tring the same for a set
var seeingIsBeli: Set<Int> = removingJuFirst(number: creatiSets) // because sets are never in roder so you will never know if you deleted the first or not.
func removeGivenNumber(whole ipo: Set<Int>, number: Int) -> Set<Int> {
    var newset: Set<Int> = []
    for something in ipo where something != number { // always use the immidiate one to the type
        newset.insert(something)
    }
    return newset
}
print(removeGivenNumber(whole: creatiSets, number: 5))

/// Creating a function for reverse
///     probably going to use the -1 indexing
///         Hopefully it works

func theReversePrint(value: [Int]) {
    var look = stride(from: value.count-1, to: -1, by: -1)
    var usiss: [Int] = []
    for x in look {
        usiss.append(value[x])
    }
    print(usiss)
}
var lilopu: [Int] = [1,2,3,4,5,6]
theReversePrint(value: lilopu)

// archieve inverse without the inverse function
var sd = stride(from: 10, to: 100, by: 4)
var loeekWhat: [Int] = [10, 20,23, 45, 56,34 ,25, 667, 909]
theReversePrint(value: loeekWhat)
// ------------------------ worked on reverese and it was awesome

var dikOFdik: [Int:[Int:Int]] = [1:[2:4], 2:[3:4]] // so you can make dictionary of dictionaries. nice

var nameTitleLookup: [String: String?] = ["Mary": "Engineer","Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup["Patrick"] = nil
nameTitleLookup.removeValue(forKey: "Ray")
print(nameTitleLookup)

// page 171, chapter 8, collection iterations with closures
//chapter 8 closure
// closures are funcitons without names

// to use a closure, you must first assign it a function
var mmultiplyClosure: (Int, Int) -> Int // this is how you would assign a function but without the types declaration, almost the same you would within a function.
mmultiplyClosure = { (a, b) in a * b }
//or
mmultiplyClosure = { $0 * $1 }
// this works because we already defined the type of closure.

/// needs space within before computing, space between python set braces
/// equal sign this time.
/// must use the "in"
var multiplyClosure = { (x: Int, y: Int) -> Int in
    return x * y
}
let testingClosure = multiplyClosure(2, 3) // closures have no external names
// several ways to shorten a closure.

var shortenedClosure: (Int, Int, Int) -> Int
shortenedClosure = { $0  + $1 * $2 }
// now for the longer version

var longerClosure = { ( g: Int, u: Int) -> Bool in
    if g > u {
        return true
    } else {
        return false
    }
}
var someDhu = longerClosure(2, 7)
someDhu.toggle()

func closureTesting(_ a: Int, _ b: Int, put: (Int, Int) -> Int) -> Int {
    let some = put(a, b)
    return some
}
closureTesting(2, 3, put: multiplyClosure)
// worked

//func definedInsideClosure(you: Int, me: Int, inside: { (you, me) in you * me }) -> Int {
//    let come = inside(you, me)
//    return come
//}
var inside: (Int, Int) -> Int
inside = { (a, b) in  a + b}
var outOfHere = { ( d: Double, rer: Double) -> Double in
    return d + rer
}
func additionsClosure(a: Double, b: Double, close: (Double, Double) -> Double) -> Double {
    let see = close(a,b)
    return see
}
additionsClosure(a: 23.0, b: 34.2, close: outOfHere)
// should work just like how a function works, a namesless function, it requires a return so it can return.
//either define the function beforehand or do so within.
// i advice against declaring closures within a fucntion.

//func declaredWithinClosure(_ d: Int, rapa: Int, close: { (d: Int, rapa: Int) -> Int in return $0 + $1}) -> Int {
//    let you = close(d, rapa)
//    return you
//}

//looks like to properly incorporate in a function other that defining a closure beforehand is to create the functions first and make provisions for it first.

func definedInsideClosure(buy: Double, from: Double, close: (Double, Double) -> Double) -> Double {
    let find = close(buy, from)
    return find
}

definedInsideClosure(buy: 3.0, from: 4.5, close: { (buy, from) in buy + from})
// yeah that was not so convincing.

var closeOFclose = { ( rot: Int, youk: Int) -> Int in
    rot + youk
}
// i think this is the best there is.
// another inside defined fucntion closre.

func jumjumLik(fol: Double, love: Double, closed: (Double, Double) -> Double) -> Bool {
    let output = closed(fol, love)
    if output > 100 {
        return false
    } else {
        return true
    }
}

print(jumjumLik(fol: 8.3, love: 9.9, closed: { (fol, love) in  fol * love}))
// so in function delcaring is the same as declare first then use later.
// you cannot use the long version within a function.
// just declare the names and do not forget the in itsa must have for closures.
// works regardless of the name... of definition, initial definition.

//upstaging my closure  functions
// use void declarion to say the closure has no parameters
//() -> void

var comehereClose = { ( b: Int, c: Int) -> Int in b * c}
var goherePlease: () -> Void = {
    print("check me out!")
}
goherePlease()
// so the type is [ () -> Void ]

var cheese = 90
let someoneElse = { cheese += 1 }
someoneElse()
someoneElse()


var gogeHelp = { print("have you seen them!") }
gogeHelp()
// page 177
// thank you Jesus Christ.

func TestingIncrementalClosure() -> () -> Int {
    var unit = 0
    var closured = { () -> Int in
        unit += 1
        return unit
    }
    return closured
}

TestingIncrementalClosure()
TestingIncrementalClosure()

/// Defining the closure.
/// Lets takes an empty input, return and empty input and eventually return an Int
/// () -> () is to define a closure function
func aNotherClosure() -> () -> Int {
    var rafa = 0
    var tyung: () -> Int
    tyung = { () in rafa + 10 }
    return tyung
}

var zamadi = [6,5,4,3,2,1]
zamadi.forEach {print("\($0): \($0+$0)")}

let values = [1, 2, 3, 4, 5, 6]
values.forEach {
  print("\($0): \($0*$0)")
}


var comeonNow = { () -> () in print("sick")}
comeonNow()

print(zamadi.filter { $0 > 3 })

zamadi.sort() // changes the originals values position
print(zamadi.first { $0 > 4}!)
zamadi.map { $0 * 9} // doesnt change the original
zamadi.map { Double($0) * 0.9 } // map to filter or even change input value and type
// you can use compact map to filter invalid numbers
let userInputNested = [["0", "1"], ["a", "b", "c"], ["💽"]]
let allUserInput = userInputNested.flatMap {
$0
}
// flatmap tosses the not so useful type and replaces it with a 0
let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let calculatedStock = stock.reduce(0) { $0 + $1.key * Double($1.value) }
// reduce is used for summation or calculations. just put 0 and then extend the closure to work out the math,

let farmAnimals = ["⌚️": 5, "📲": 10, "🖥️": 50, "🖱️": 1]
var alterSEE: [String] = []
var tu = 0
for (x, y) in farmAnimals {
    alterSEE.append(x)
    tu += y
}
alterSEE.dropFirst(2) // dropping arrays or chop
var rynningOut = [1,2,3,4,5,6,7,8,9,10,11]
rynningOut.prefix(upTo: 4)
rynningOut.suffix(from: 3) // prefix and suffix use interchangably as pleased
rynningOut.removeAll() { $0 > 5}

// lazy collection.can be called upon only when needed.

var names = ["asu", "yurt", "opoe", "aqse", "rtyui"]
print(names.filter { $0.count > 4})


// closures excercises of tests

var apprentice: () -> Void = { () in print("Swift Apprentice is a great book!")}
var allitleDiifer = { (rit: Int, wer: Int) -> Int in rit + wer }

func repeating(several: Int, closer: () -> Void)  {
    for _ in 1...several { closer() }
    // easy, sometimes just remove the print initiative
}
repeating(several: 10, closer: apprentice)

//challenge 2
// when there is two like this, you can work.
var closerOFClosrer = { ( value: Int, go: Int) -> Int in
    value + go
}
//but one always returns ()
var singapore = { (value: Int) -> () in
    var staten = 0
    for x in 1...value {
        staten += x
    }
    print(staten)
}

func mathSum(lengh: Int, close: (Int) -> ()) {
    singapore(lengh)
}
mathSum(lengh: 5, close: singapore)
// over understood closures.

//page 188 strings
// you cannever index a string due to grapheme substring ( something ) basically strings are represented by numbners and tehrefore you cannver pic a number to represent it.
// see page 1255 for explanation

var cafe = "cafeine"
cafe.count
cafe.unicodeScalars.count
// understood.

for x in cafe.unicodeScalars {
    print(x.value)
}

cafe[cafe.startIndex] // obtaining the first character via index
//cafe[cafe.endIndex] throws an error because the endindex is one index past the end of the string. somehow makes sense

cafe[cafe.index(before: cafe.endIndex)] // works

cafe[cafe.index(cafe.startIndex, offsetBy: 3)] // this is another way to offset theindex by a certain amount
// all this is neccesary because of the grapheme cluster.

let camp = "matt"
let backwards = camp.reversed()
backwards[backwards.index(after: backwards.startIndex)] // that was long back the string is backwards now.

//to have a raw string that is a string with all its bell and whistle you use the # hast tag. example.
let raw = #"look at this" is could be anything really"#
print(raw) // prints it all wiht anything included within

// you can perform interpolation with raw string. thou i would advise against it.
//let can = "can do that too"
//let raw3 = #"Yes we \#(can)!"#
//print(raw3)
// substrings page 197

let fullName = "Humphrey Hanson"
let substrings = fullName.firstIndex(of: " ")!
fullName[fullName.startIndex..<substrings] // how to fetch names or part of names in form of substrings.
// used force unwrap because i know one exists. susbtring basically getting the index before that particular value .


let severaLNames = "Humphrey Hanson, Khayala Sadikhova"
let substying = severaLNames.firstIndex(of: ",")!
severaLNames[severaLNames.startIndex..<substying]
// get the index of the value you are wanting to pull then work with count..< than to print the substring.

//new type of range ..<value called the open end range, assumes
//charaacter properties
let charv: Character = "X"
charv.isASCII // ASCII stands for American Standard Code for Information Interchange
//Thank you Christ Jesus.
// page 198

let hugo = "harambe harambe. come home now"
let sgo = hugo.firstIndex(of: ".")!
hugo[hugo.startIndex..<sgo]
// well done. Have Mercy on me grace.

let whiteSpaces: Character = "d"
whiteSpaces.wholeNumberValue // you can convert character to number with wholeNumberValue

// chapter 10
// structures. // page 214.

struct locations {
    let x: Int
    let y: Int
}

//to intantiate it.
let storeLocation = locations(x: 23, y: 56) //🧩

struct deliveryArea {
    let center: locations
    let radius: Double
}

var storeArea = deliveryArea(center: storeLocation, radius: 2.4)
print(storeArea)

// mini excercise
/// a structure that represents a pizza order with toppings and everything inside it.
///
struct pizza { //🧩
    let crust: String
    let size: String
    let toppings: String
    let cook: Double
}
let pizzaOrder = pizza(crust: "thick", size: "large", toppings: "chicken", cook: 25.5)

struct house { //🧩
    var x: Int
    var y: Int
}
var hausen = house(x: 23, y: 12)

struct hereNow { //🧩
    var x: Int
    var y: Int
}
var storeFront = hereNow(x: 34, y: 23)

struct shipPizza { //🧩
    let cooked: pizza
    var address: house
    let store: hereNow
    let begin: Bool
}

var PizzaDeliveryServices = shipPizza(cooked: pizzaOrder, address: hausen, store: storeFront, begin: true)
// that is a big order. 🏟️

// accessing the values.

PizzaDeliveryServices.address.x // use the dot to find value
PizzaDeliveryServices.cooked.cook // good
PizzaDeliveryServices.address.x = 100

// now write a function that combines this all and spits out the correct output

// ------------------------------------------------------- ⚠️
//off topic for a while as i create closures
var closedClosedClosed = { () -> String in
    var adams = "hellody"
    return adams}
closedClosedClosed()

var sososos: () -> Void
sososos = { () -> () in print("qwertyuiop")}

var diceEmGood = { () -> () in print("🎲")}
diceEmGood()
diceEmGood()

var returnquicly = { () -> () in
    var sugar = 0.0
    repeat {
        sugar += 0.5
        print("Stop Please!")
    } while sugar < 2
}
diceEmGood()
returnquicly()
//-------------------------------------------------------- ⚠️

struct orange {
    var x: Int
    var y: Int
    var circle: Bool
}

var orangeSize = orange(x: 54, y: 40, circle: true)

func calculatingOrangePrice(size: orange, priceRnage: String = "$35") {
    var inside = size.x
    var outside = size.y
    var shape = size.circle
    
    if inside > 23 && outside > 35 {
        print("Looking good for a \(shape) Orange, therefore lookout for the \(priceRnage)")
    } else {
        print("i wount spend more than \(priceRnage) on that one")
    }
}
calculatingOrangePrice(size: orangeSize)
// the struct is the type you put in on the function to use within or later. that the whole point of structs.

//ordering chinese for delivery

struct direction {
    var longitude: Double
    var latitude: Double
    //var food: String
}
//⤵️
struct wokfood {
    var price: Double
    var food: [String]
    var distance: direction
}

var clientAddress = direction(longitude: 13.4, latitude: 45.29)
var chinaWokDirection = direction(longitude: 37.2, latitude: 46.9)
var ChinaWok = wokfood(price: 7.99, food: ["rice", "chips", "wings"], distance: chinaWokDirection)

/// Always plan for a function
///     Take the distance minus to calculate the distance
///     check for payment
///     then release the food
///     with a notice of delivery time
///     distance = √((lat2 - lat1)² + (lon2 - lon1)²)
///     var chinaWokDirection = direction(longitude: 37.2, latitude: 46.9)
func calculateEstimateChinaFoodShipping(Name: String, client: direction, order: wokfood, Cash: Bool) {
    
    // calculate distance
    let distance = (order.distance.latitude - client.latitude) + (order.distance.longitude - client.longitude)
    // checking for the food
    let customerName = Name.firstIndex(of: " ")!
    let actualName = Name[..<customerName]
    //now print price menu and name
    
    // an if statement
    if distance < 5 {
        print("\nHowdy there! \(actualName) \n You can now proceed with ordering your meal for delivery. \n Please pick from our menu catalog of either \(order.food). \n All at a price of \(order.price) only")
    } else if Cash == false {
        print("\nHowdy there! \(actualName) \n You can now proceed with ordering your meal for delivery. \n Please pick from our menu catalog of either \(order.food). \n All at a price of \(order.price) only \n But All Payment Must Be Settled via $ Cash only")
    } else if distance > 5 {
        print("We are saddended to notify you that our services are yet to cover your region.")
    }
}
calculateEstimateChinaFoodShipping(Name: "Humphrey Hanson", client: clientAddress, order:ChinaWok, Cash: false)

var orderComingUp = { (order: String?) -> () in
    if ChinaWok.food.contains(order!) {
        print(" Your \(order!) will cost \(ChinaWok.price) please \n You may pay whenever your ready.")
    }
}
orderComingUp("rice")
// closure.

// page 216

// methods are functions that are member of types.
// page 218.

// swift public library
// conforming to a protocal
// these are rules that a particular set has to satisfy for it to be working. so it could be.

//struct deliveryArea: CustomStringConvertible {
//    let center: Int
//    let radius: Double
//    var description: String {
//        """
//Area with center: (x: \(center.x)
//    }
    
//}

// page 223
// chapter 11 properties.
// value inside a structure is called a property.

struct AddressBook {
    let name: String
    var number: Int
    var email: String
    var locale: String
    let gender: Character
}

var personOne = AddressBook(name: "Hanson", number: 2017_7433, email: "humphrey@icloud.com", locale: "Hausen", gender: "M")
personOne.gender // property for you, storing value.

// to be able to alter values on property, the initalized substance must be stored in var not let. example
//personOne.gender = "F" // gives an error because tho the initalized persons is a var , the parent enviroment isnt.
personOne.locale = "Frankfurt am Main" // worked

// structure initialization.
struct ConnEction {
    var name: String
    var age: Int
    var relation = "Single"
    var connectedness = "friend"
}

var HansPocket = ConnEction(name: "Khayala", age: 30, relation: "Wife", connectedness: "Prayer")
HansPocket.connectedness // property have a noted p at the end whenever called upon
// a [P] boxed p of sort.

//computing structure.
struct TV {
    var height: Double
    var width: Double
    var diagonol: Int {
        let result = ( height * height + width * width).squareRoot().rounded()
        return Int(result)
    }
    //conputed property dont store any value, but they return the value fo calcularion
    // instead of the assign parameter, you use the parentethes to enclose what your calculation and return value. no printing please
}

var SamsungTv = TV(height: 23.4, width: 43.7)
SamsungTv.diagonol // calculated value

// page 228.
// so far i have been using the getter.
// enter the setter zone.

// the getter and setter, getter is basically a calculated variable in a structure, while setter is more of a reverse ingeneering mechanism that can calculate and give value to the input. backwards compatability.

struct GuesTheAge {
    var father: Int
    var mother: Int
    var brother: Int = 10 // default setting if not specified.
    var daughter: Int { // thats how you set a get or set
        get {
            var result: Int = 0
            result = (father - brother * father - brother) - (mother - brother * mother - brother)
            return Int(result / 2) + brother
        }
        set {
            father = (brother - newValue) + 4  * 2
            mother = father + 2
        }
    } // use new value if you will introduce a value using the ditermined getter
}

var tobias = GuesTheAge(father: 33, mother: 28)
tobias.daughter = 23
print(tobias)

// setter is the reverse engineering of the the previous get
// type properties

// page 229
// building multi-leveled game
struct levels {
    static var higherLevel  = 1
    var id: Int
    var name: String
    var finish: Bool
    var boss: String
}

var aSimpleGame = levels(id: 23, name: "james", finish: true, boss: "K.O")
print(aSimpleGame)
// was wondering how one can update value of property that is prescribed within a structure.
// enter the willset and didset.

struct deckosCard {
    static var levelingUp: Int?
    var lot: Int
    var name: String
    var ace: Bool {
        didSet {
            //if lot > 3 { return true }
            var jaz = {() -> Int in return Int.random(in: 1...5)}
            if ace == true { Self.levelingUp = jaz() }
        }
    }
}

var secko = deckosCard(lot: 4, name: "Hans", ace: true)
deckosCard.levelingUp
// ntoiced sentenec conditionals and they work good.

struct sehiko {
    static var lalala: Int = 1
    var kitanda: Int
    var mto: String
    var kalala: Bool {
        didSet {
            var jaz = {() -> Int in return Int.random(in: 1...5)}
            if kalala && kitanda > Self.lalala { Self.lalala = jaz() }
            // this example here, regarding the simple boolean values.
            // can be easily implemented.
            //sehiko.lalala is anotherway of accesing the type property
        }
    }
}

// how else can you use didSet.
// you can use it as a value blockage to set limits on what is acceptable and what is not acceptable.

struct freeFoodPlease {
    static var ageLimit = 35
    //var name: String
    //var gender: Character
    var age: Int = 0 {
        didSet {
            if age > Self.ageLimit {
                print(" Sorry Please,\n you exceed the required age limit")
                age = oldValue
            }
        }
    }
}

var carolina = freeFoodPlease()
carolina.age = 45
carolina.age

// there stopped age from increasing. using self didget.
// stroreValue has a didSet and willSet
// computed values have getter and setter. ( get and set)

struct ElectricCurrent {
    static var maxVoltage = 200
    var lightsOn = true
    var voltage: Int = 100 {
        willSet {
            if newValue > Self.maxVoltage {
                lightsOn.toggle()
            }
        }
    }
}

var umeme = ElectricCurrent()
umeme.voltage = 230
umeme.lightsOn

// the willset and didset work after initioation, not upon initiation.
// for that sort of initiation i will need to use compute value the get and set sort.

// page 233. lazy properties.
// Thank you Christ Jesus. 


// lazy property
struct circle {
    lazy var pi = {
        ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
    } ()
    var radius = 0.0
    var circumfarence: Double {
        mutating get {
            pi * radius * 2
        }
    }
    init(radius: Double) {
        self.radius = radius
    }
}
// only when you need the circumference will pi also be computed. this is used for heavy computation and i quite frankly find it unsuble yet.
//📌
var chocolare = { (345 * 34) }() // explains pi. use it without the parameters.
chocolare // this is an interesting way to do something.
// thank you Christ Jesus.

// page 238 chapter 12
// methods

//let months = ["January", "February", "March",
//                "April", "May", "June",
//              "July", "August", "September",
//              "October", "November", "December"]

//struct SimpleDate {
//    var month: String
//    var time: Int
//}

//possible error with the code.
//func CalculatingWinter(input: SimpleDate) -> Int {
//    input.month.firstIndex(of: "December")! - input.month.firstIndex(of: date.month)!
//}


//let months = ["January", "February", "March",
//              "April", "May", "June",
//              "July", "August", "September",
//              "October", "November", "December"]

//struct SimpleDate {
//  var month: String
//}
//func monthsUntilWinterBreak(from date: SimpleDate) -> Int {
//  months.firstIndex(of: "December")! -
//  months.firstIndex(of: date.month)!
    // now it makes sense.
//}

struct WintercalculaterDate {
    static var months = ["January", "February", "March",
                         "April", "May", "June",
                         "July", "August", "September",
                         "October", "November", "December"]
    var month: String
    func monthsUnitWinter(from date: WintercalculaterDate) -> Int {
        Self.months.firstIndex(of: "November")! - Self.months.firstIndex(of: date.month)!
    }
}

let date = WintercalculaterDate(month: "October")
date.monthsUnitWinter(from: date) // weird ( passing the instance back in as a parameter )
// had to use static for this and self.
// over-all, a function within a struct is what we call a method. but i could have accomplished this easily with getter and setter.
//lets look into this further.

// date.monthsUnitWinter()// error

//excercise
struct soccerSeason {
    static var mwezi = ["January", "February", "March",
                        "April", "May", "June",
                        "July", "August", "September",
                        "October", "November", "December"]
    var mothn: String
    var time:Int {
        get {
            var close = { () -> Int in
                var time = 0
                time = Self.mwezi.firstIndex(of: "December")! - Self.mwezi.firstIndex(of: mothn)!
                return time
            }
            return close()
        }
    }
}
var sunday = soccerSeason(mothn: "April")
sunday.time
// slightly complicated getter. but not a major upset.

var mwezi = ["January", "February", "March",
             "April", "May", "June",
             "July", "August", "September",
             "October", "November", "December"]

struct soccerTime {
    var sebudu: String
    func manyMonths() -> Int {
        mwezi.firstIndex(of: "December")! - mwezi.lastIndex(of: sebudu)!
    }
}

var shenko = soccerTime(sebudu: "April")
shenko.manyMonths()
// method, is a function within a struct. lets try doing this with closures

//struct DoingThiswithStruct {
    //var neno: String
    //then alreayd defined closures don't seem to work at all
    //var sebiop = { () -> Int in mwezi.firstIndex(of: "December")! - mwezi.lastIndex(of: neno)!}
    //closures do not work, pERIOD!
//}

var semanaMi: () -> Void
semanaMi = { () in print("dhumpa")}

struct XayalaHanson {
    var send: String
    init() {
        send = "July"
    }
    func howcomes() -> Int {
        mwezi.firstIndex(of: "December")! - mwezi.lastIndex(of: send)!
    }
}

var hebu = XayalaHanson()
hebu.howcomes()
hebu.send
// initializing with init()

//🧩 initializers in structures
struct DecodingDates {
    var months: String
    var days: Int
    init(months: String, days: Int) {
        self.months = months
        self.days = days
    }
    func checki() -> Int {
        mwezi.firstIndex(of: "December")! - mwezi.lastIndex(of: months)!
    }
}

var helloJames = DecodingDates(months: "July", days: 27) // now they have appeared
helloJames.checki()
//page 246
//Thankl You Christ Jesus

// page 246

struct SimpleMonth {
    var month: String = "MarchSundayTuesdayMondayThursdayMayDecember"
    var date: Int = 23
    func computed() -> Int {
        return month.count + date
    }
}

var az = SimpleMonth(month: "December") // this way you will need to force it to come out
az.month
az.computed()
//🥊 ( meaning that i have reached a punch line )

// Type methods, you call them at the very begining with static and they acces each and every instance in the structure.
// Instance is what is called in the structrue as values.

struct Math {
    static func factorial(of number: Int) -> Int {
        (1...number).reduce(2, +) // has got to be in close range for it to work
    }
    static func aDDition(of number: inout Int) {
        number += 10
    }
}
Math.factorial(of: 20) //understood
Math.aDDition(of: &a.date) // you can pack as many functions as possibel under the structure platform.

extension Math {
    static func PrimeFactorial(of number: Int) -> [Int] {
        var remainingValues = number
        var testfactor = 2
        var primers: [Int] = []
        while testfactor * testfactor <= remainingValues {
            if remainingValues % testfactor == 0 {
                primers.append(testfactor)
                remainingValues /= testfactor
            } else {
                testfactor += 1
            }
        }
        if remainingValues > 1 {
            primers.append(remainingValues)
        }
        return primers
    }
}

Math.PrimeFactorial(of: 908765)
// extension allows you to add more methods in a structure even if you do not have the source code for it.
// good hack and add on. + clean

extension SimpleMonth {
    mutating func Checkdate() { // when using mutating, never provide a return output type for the function
        date += 12
    }
}

var aa = SimpleMonth(month: "January", date: 98)
aa.Checkdate() // never prints also. thats a thing.
aa.computed()
// you can also add extension for init


// challenges 🍼
struct Circle {
    lazy var pi = { (23 * 45 / 87) }()
    var radius: Int
    var area: Int {
        mutating get {
            pi * radius
        }
    }
}
// Not sure if i have aced it but its something to such effect and whatnot.
// Didset of willset cannot be provided with a getter.
// So in such occasion you add the didset.
var aaa = Circle(radius: 43)
aaa.pi
aaa.area

//extension Circle

// page 252 🚩
struct aaab {
    static var voltage: Int = 200
    var light: String = "On"
    var volts: Int {
        didSet {
            if volts > Self.voltage {
                light = "Off"
            }
        }
    }
}

var LightsTesting = aaab(volts: 234)
LightsTesting.volts = 234
LightsTesting.light // thats didset for you, you must apply the structure before it can be called to correct again by adding new value, so this is not your best option for real world application

struct abaa {
    static var voltage = 234
    var lights: Bool = true
    var volts: Int {
        willSet {
            if volts > Self.voltage {
                lights.toggle()
            }
        }
    }
}

var lightOnTesting = abaa(volts: 300)
lightOnTesting.lights
lightOnTesting.volts = 454
lightOnTesting.lights
// still wont work either. something is not right somewhere.

struct aabb {
    static var voltage = 890
    var toyota: Int
    var zebra: Int
    var tenis: Int {
        get {
            var zack = 0
            zack = toyota + zebra
            return zack
        }
        set {
            if newValue > 24 {
                toyota = 34
                zebra = 54
            } else {
                toyota = 100
                zebra = 34
            }
        }
    }
}

var TryingSettersGetters = aabb(toyota: 24, zebra: 89)
TryingSettersGetters.tenis = 93
TryingSettersGetters.zebra
// this is a fine work 🌿

// chapter 13 classes
// structure is used to represent value, while classes are used to represent objects
// class must have an initializeer init() if they are ever to give automatic parameter initials

class aaabbb {
    var firstname: String
    var lastname: String
    init(firstName: String, lastName: String) {
        self.firstname = firstName
        self.lastname = lastName
    }
    var fullname: String {
        "\(firstname) \(lastname)"
    }
}
var Majina = aaabbb(firstName: "Humphrey", lastName: "Hanson")
Majina.fullname // thats class in a nutshell.

// in swift an istance of a structure is an imutable value, while in class the instances are imutable
// memory sharing antics

var jina = Majina
// check for memory with 3 equal strokes
jina === Majina
// weird code 🃏
var imposters = (0...100).map { _ in
  aaabbb(firstName: "John", lastName: "Appleseed")
}

// testing memory so i can understadn it.
imposters.insert(Majina, at: Int.random(in: 1..<10))
if let anotherChecking = imposters.firstIndex(where: {$0 === Majina}) {
    imposters[anotherChecking].firstname = "Xayala"
} // this is how you can use where clause. ( used the wrong type to index word )

var checkininmajina = imposters.contains(where: {$0 === Majina})
//🥊

// 263 methods mutability
struct Grade {
    let letter: Character
    let point: Int
    let credit: Double
}

class student {
    var firstName: String
    var lastName: String
    var grade: [Grade] = []
    init(Firsname: String, lastName: String) {
        self.lastName = lastName
        self.firstName = Firsname
    }
    func recordGrade(_ grades: Grade) {
        grade.append(grades)
    }
}

let jane = student(Firsname: "Humphrey", lastName: "Hanson") //📌 ( could change a constant because it is a reference type of class variety )
let history = Grade(letter: "B", point: 67, credit: 90.0)
var math = Grade(letter:"C", point: 34, credit: 45.0)

jane.recordGrade(history)
jane.recordGrade(math)

var credit = 0.0
extension student {
    func rcordGrade(_ grades: Grade) {
        grade.append(grades)
        credit += grades.credit
    }
}
jane.rcordGrade(math)
credit // clearing sharing, so whats to it.
math = Grade(letter:"C", point: 34, credit: 4)
math.credit
jane.rcordGrade(math)
credit

/// extensions must not contain initialized values.
extension student {
    var null: String {
        "\(firstName) \(lastName)"
    }
}

// challange page 269/555

class users {
    var first :String
    var last: String
    init(name1: String, name2: String) {
        self.first = name1
        self.last = name2
    }
}

var cleint1 = users(name1: "Hump", name2: "hrey")
var clien2 = users(name1: "Han", name2: "son")

class list {
    var explantion: String
    var releseYear: Int
    var name: users
    init(explain: String, names: users, release: Int) {
        self.explantion = explain
        self.name = names
        self.releseYear = release
    }
    func fullnameUndInfo() -> String {
        var sum = name.first + name.last
        return " \(sum) \n said the following on a movie release in \(releseYear) \n \(explantion)"
    }
}

var list1 = list(explain: "it was an ok movie, it was honestly whatever", names: clien2, release: 2022)
list1.releseYear = 2009
print(list1.fullnameUndInfo())
// just got to know which one to use and what time. later on down the line i might understand the memory thing much better, but for now, i think this swell.



