import Foundation

// Do `foo()` and `bar()` behave in the same way?

class Foo {
    var info = 4

    func loadInfo() -> Int {
        return 42
    }

    func foo() {
        DispatchQueue.global().async { [weak self] in
            guard let info = self?.loadInfo() else {
                return
            }
            DispatchQueue.main.async {
                self?.info = info
            }
        }
    }

    func bar() {
        DispatchQueue.global().async { [weak self] in
            guard let self = self else {
                return
            }
            let info = self.loadInfo()
            DispatchQueue.main.async {
                self.info = info
            }
        }
    }
}
