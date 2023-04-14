// chapter 22.
// thank you Christ Jesus.

// creating faliable initialization.

struct Pethouse {
    let squareFeet: Int
    
    init?(square: Int) {
        if square < 1 {
            return nil
        }
        self.squareFeet = square
    }
}
// one of many reasons why you would want to include an ini in a struct.
// making it failiable proof.

let toosmall = Pethouse(square: 34)
let house = Pethouse(square: 0) // returns nill when it fails.
// error handling.


// lesson on why you shouldn't use force unwrapping.

class pet {
    var breed: String?
    
    init(bread: String? = nil) {
        self.breed = bread
    }
}

class person {
    let pet: pet
    
    init(pet: pet) {
        self.pet = pet
    }
}

let delia = pet(bread: "pug")
let olive = pet()

let janies = person(pet: delia)
let olivias = person(pet: olive)

let dogbreed = olivias.pet.breed // this is somehow bad and can cause a crash.

if let dogbreed = olivias.pet.breed {
    print("she has a breed \(dogbreed)")
} else {
    print("deosnt have one")
} // thats you conduct unwrapping.


//📌
class Toy {
    // understand why you include enum inside a class.
    enum Kind {
        case ball, zombie, bone, mouse
    }
    
    enum sound {
        case squeak, bell
    }
    
    let kind: Kind
    let color: String
    var sound: sound?
    
    init(kind: Kind, color: String, souds: sound? = nil) {
        self.kind = kind
        self.color = color
        self.sound = souds
    }
}


class Pett {
    
    enum kind {
        case dog, cat, guineaPig
    }
    
    let name: String
    let kind: kind
    let favourite: Toy?
    
    init(name: String, link: kind, fvourite: Toy?) {
        self.kind = link
        self.favourite = fvourite
        self.name = name
    }
}

class Persons {
    let pet: Pett?
    
    init(pet: Pett? = nil) {
        self.pet = pet
    }
}

var janie = Persons(pet: Pett(name: "Delia", link: .dog, fvourite: Toy(kind: .ball, color: "purple", souds: .bell)))

var filipe = Persons()

var tammy = Persons(pet: Pett(name: "Evil cAT", link: .cat, fvourite: Toy(kind: .mouse, color: "red")))

if let sound = janie.pet?.favourite?.sound {
    // this is if the optional is put in the respective feild.
    print("sounds \(sound)")
} else {
    print("no sound.")
    //unwrapping.
}

if let sound = tammy.pet?.favourite?.sound {
    print("\(sound) good")
} else {
    print("not bad")
}

if let sound = filipe.pet?.favourite?.sound {
    print("good \(sound)")
} else {
    print("not bad")
}

// safe unwrapping.

// Since Tammy’s cat’s toy does not have a sound, the process bails out after favoriteToy?. Since Felipe doesn’t have a pet at all, the process bails out after
//  pet?.

let team = [janie, filipe, tammy]
let petting: () = team.forEach {$0.pet?.name}
let petnames = team.map {$0.pet?.name}

let pettnamesAre = team.compactMap {$0.pet?.name} // compact map unwraps the optionals and gives access to the inward inputs.
pettnamesAre.forEach {print($0)}

// the error protocal.


class Pastry {
    let flavour: String
    var numberOnHand: Int
    
    init(flavor: String, number: Int) {
        self.flavour = flavor
        self.numberOnHand = number
    }
}

enum BakeryError: Error { // confirming to the error protocal.
    case tooFew(numberOnHand: Int), doNotSell, wrongFlavor
    case inventory, noPower
}

// Throwing Erros
class Bakery {
    var itemForSale = [
        "Cookie": Pastry(flavor: "ChocolateChip", number: 20),
        "PopTart":Pastry(flavor: "WildBerry", number: 13),
        "Donut": Pastry(flavor: "Sprinkle", number: 24),
        "HandPie": Pastry(flavor: "Cherry", number: 6)]
    
    /// throwing added as throws
    func Open(_ now: Bool = Bool.random()) throws -> Bool {
        guard now else {
            // this is an early boolean ideal.
            // compares and outputs one or the other.
            throw Bool.random() ? BakeryError.inventory : BakeryError.noPower
        }
        return now
    }
    
    func orderPastry(item: String, amountRequested: Int, flavour: String) throws -> Int {
        guard let pastry = itemForSale[item] else {
            throw BakeryError.doNotSell
        }
        guard case flavour = pastry.flavour else {
            throw BakeryError.wrongFlavor
        }
        
        guard amountRequested <= pastry.numberOnHand else {
            throw BakeryError.tooFew(numberOnHand: pastry.numberOnHand)
        }
        pastry.numberOnHand -= amountRequested
        return pastry.numberOnHand
    }
}


//let bakerey = Bakery()
//try bakerey.Open()
//try bakerey.orderPastry(item: "Albatross", amountRequested: 1, flavour: "albatros flavour")

// to throw errors you must use the try at the begining before doing so.
// errors handling

// errors throwing and catching
do {
    let bakerer = Bakery()
    try bakerer.Open()
    try bakerer.orderPastry(item: "Albatross",
    amountRequested: 1,
    flavour: "Albatros Flavour")
} catch BakeryError.inventory, BakeryError.noPower {
    print("sorry the bakery is closed")
} catch BakeryError.doNotSell {
    print("we do not sell that item")
} catch BakeryError.wrongFlavor {
    print("we do not have that flavor")
} catch BakeryError.tooFew {
    print("we havent enough")
}

// you need the do and catch but infused within with try.
// do, try, catch and print within.


// you can try to throw an error and not care what it returns.
let open = Bakery()
try? open.Open(false) // easy as such. but this releases no message output as error being handles.

try! open.Open(true)
try! open.orderPastry(item: "Cookie", amountRequested: 1, flavour: "ChocolateChip")
// opens as we know what is inside.
// no do nor try here.

// a much more complex error handling, page 437.
// works best with enum.

enum Directions {
    case left, right, forward
}

enum PugbotError: Error {
    case invalidMove(found:Directions, Expected: Directions)
    case endOfPath
}

// creating the pudbot class. infused with the error handlers.

class Pugbot {
    let name: String
    let correctPath: [Directions]
    private var currentStepInPath = 0
    
    //1
    init(name: String, correct: [Directions]) {
        self.correctPath = correct
        self.name = name
    }
    
    //2 ( this could be the right way with no int ) ( but because it doesn't have number calculations. )
    func move(_ direction: Directions) throws {
        //1
        guard currentStepInPath < correctPath.count else {
            throw PugbotError.endOfPath
        }
        
        //2
        let nextDirection = correctPath[currentStepInPath]
        guard case nextDirection = direction else {
            throw PugbotError.invalidMove(found: direction, Expected: nextDirection)
        }
        currentStepInPath += 1
    }
    
    func reset() {
        currentStepInPath = 0
    }
}


let pug = Pugbot(name: "Pug", correct: [.forward, .left, .left, .forward, .right])

func goHome() throws {
    try pug.move(.forward)
    try pug.move(.left)
    try pug.move(.right)
    try pug.move(.right)
}

do {
    try goHome()
} catch {
    print("Pugbot failed to get home")
}

func moveSafely(_ movement: () throws -> ()) -> String {
    do {
        try movement()
        return "completed operation succcefully."
    } catch PugbotError.invalidMove( let found, let expected) {
        return " the bot was supposed to move \(expected) but moved towards \(found)"
    } catch PugbotError.endOfPath {
        return " bot tried to move past the end path"
    } catch {
        return " un known error."
    }
}

moveSafely {
    // now the bot works accordingly.
    try pug.move(.forward)
    try pug.move(.left)
    try pug.move(.right)
    try pug.move(.right)
}
