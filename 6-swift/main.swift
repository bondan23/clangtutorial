import Logger

/// Tutorial Conmpile Swift
var logger = Logger("> ")
logger.log(object: "Hello")

/// Tutorial Objc Interop
let color = Color()
if let getColor = color.getColor() {
    print("HELLO WORLD, Tokopedia color is \(getColor)")
}