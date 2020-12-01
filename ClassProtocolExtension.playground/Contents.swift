import UIKit

protocol Foo {}

class Bar: Foo {
    func someFunction() {
        print("Bar class")
    }
}

extension Foo {
    func someFunction() {
        print("Foo class")
    }
}

let bar = Bar()
bar.someFunction()

let foo: Foo = bar
foo.someFunction()
