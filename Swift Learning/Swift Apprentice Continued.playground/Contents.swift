class Tutorial {
    let tittle: String
    unowned let author: Author // unowned
    weak var editor: Editor?
    
    // closures
    lazy var description: () -> String = {
       [unowned self] in
        "\(self.tittle) by \(self.author.name)"
    }
    
    init(tittle: String, author: Author) {
        self.tittle = tittle
        self.author = author
    }
    
    deinit {
        print("Goodbye tutorial \(tittle)")
    }
}

class Editor {
    let name: String
    //let author: Author
    var tutorials: [Tutorial] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Goodbye editor \(name)")
    }
}


class Author {
    let name: String
    var tutorials: [Tutorial] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Goodbye author \(name)")
    }
}

do {
    let author = Author(name: "Cosmin")
    let tutorial = Tutorial(tittle: "Memory Management", author: author)
    let editor = Editor(name: "Ray")
    tutorial.editor = editor
    editor.tutorials.append(tutorial)
    print(tutorial.description())
}
// this is to avoid memory leakage.


// closure memory management
var samsom: () -> Void
samsom = {() -> Void in print("hello now!")}
samsom
var zack = {(34 * 45)}()
zack

// ----------





typealias codable = Encodable & Decodable
// best use this wiht a struct and an enum. for it to work well.
class vans: Codable {
    var name: String
    var age: Int
    var title: String
    
    init(one: String, two:Int, three: String) {
        self.name = one
        self.age = two
        self.title = three
    }
}

// ----------------- side tour here.
import JavaScriptCore
import Foundation
var jesica = vans(one: "hello", two: 34, three: "omanshu")
let jason = JSONEncoder()
let benz = try jason.encode(jesica) // must assign it to something

let decode = JSONDecoder()
// here refer back to the type initiator.self
try decode.decode(vans.self, from: benz)

String(data: benz, encoding: .utf16BigEndian)! // this is to see what we encoded. the send it over the API.
// ================================ back to escaping closures.
// the closure keeper.
// final class and keeps closrue and can be reused as such.
final class functionkeeper {
    private let function: () -> Void
    
    init(function: @escaping() -> Void) {
        self.function = function
    }
    func run(){ function()}
}

let name = "Cosmin"
let f = functionkeeper {
    print("hello \(name)")
}
f.run()

// captures list.

var counter = 0
var g = {[counter] in print(counter)}
counter = 1
g()

// use unowned if the data at hand will never be nil and simply be without,
// use weak if the data is holder is likely to be nil.

// Thank you Christ Jesus.
