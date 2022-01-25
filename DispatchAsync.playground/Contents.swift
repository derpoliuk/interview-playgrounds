import Foundation

// 1. What will be the output?

DispatchQueue.main.async {
    print("1")
    DispatchQueue.main.async {
        print("2")
    }
    print("3")
}

// 2. What will be the output?

//DispatchQueue.main.async {
//    print("1")
//    DispatchQueue.main.sync {
//        print("2")
//    }
//    print("3")
//}
