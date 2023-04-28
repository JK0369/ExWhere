import UIKit

protocol ProtocolA {
}

protocol ProtocolB {
}

struct StructA: ProtocolB {
}

class ClassA {
}

class ClassB: ProtocolB {
}

// extension ProtocolA where SomeType: ClassType
// ClassA를 상속하고, ProtocolA를 준수하는 모든 타입을 대상
extension ProtocolA where Self: ClassA {
    func printSome() {
        print("some")
    }
}

// where ProtocolB SomeType == {ProtocolB의 타입 중 하나}
// ProtocolB를 준수하고 있는 타입을 대상
extension ProtocolB where Self == StructA {
}

extension ProtocolB where Self == StructA {
}

extension ProtocolB where Self == ClassB {
    func printSome2() {
        print("some2")
    }
}

///

class ABC: ClassA, ProtocolA {
}

class ABC2: ClassB {
}

///

let abc = ABC()
abc.printSome()

let abc2 = ABC2()
abc2.printSome2()
