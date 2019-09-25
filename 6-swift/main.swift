import Logger

let color = Color()
if let getColor = color.getColor() {
    print("HELLO WORLD, Tokopedia color is \(getColor)")
}

var logger = Logger("> ")
logger.log(object: "Hello")