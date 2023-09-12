// import Logger

/// Tutorial Conmpile Swift
// var logger = Logger("> ")
// logger.log(object: "Hello")

// /// Tutorial Objc Interop
// let color = Color()
// if let getColor = color.getColor() {
//     print("HELLO WORLD, Tokopedia color is \(getColor)")
// }
import Foundation

class ViewController: NSObject {
    @inline(__always)
    func randomInt() -> Int{
        return Int(arc4random_uniform(UInt32.max))
    }

    func example2(){
        print(randomInt())
    }
}

let vc = ViewController()
vc.example2()