import UIKit

//: Lv1 & 2
class Calculator {
    
    let num1: Double
    let num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func plus() -> Double { num1 + num2 }
    func minus() -> Double { num1 - num2 }
    func multiply() -> Double { num1 * num2 }
    
    func divide() -> Double? {
        if num1 == 0 {
            print("분자가 0입니다.")
            return nil
        } else if num2 == 0 {
            print("분모가 0입니다.")
            return nil
            
        } else {
            return Double(num1 / num2)
        }
    }
    
    func remainder() -> Int? {
        if num1 == 0 {
            print("분자가 0입니다.")
            return nil
        } else if num2 == 0 {
            print("분모가 0입니다.")
            return nil
        }
        let num3 = num1.truncatingRemainder(dividingBy: num2)
        return Int(num3)
    }
}

let asd = Calculator(num1: 7, num2: 0)
print(asd.plus())
asd.minus()
asd.multiply()
asd.divide()
asd.remainder()


//: Lv3
class Calculator2 {
    
    let addOperation = AddOperation()
    let subStractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperator = RemainderOperator()
    
    init() {
    }
}

// 더하기
class AddOperation {
    
    func plus(a: Double, b: Double) -> Double {
        return a + b
    }
}

// 빼기
class SubstractOperation {
    
    func minus(a: Double, b: Double) -> Double {
        return a - b
    }
}

// 곱하기
class MultiplyOperation {
    
    func multiply(a: Double, b: Double) -> Double {
        return a * b
    }
}

// 나누기
class DivideOperation {
    
    func divide(a: Double, b: Double) -> Double {
        
        if a == 0 || b == 0 {
            return 0
        } else {
            return a / b
        }
    }
}

// 나머지 구학기
class RemainderOperator {
    
    func remainder(a: Int, b: Int) -> Int {
        
        if a == 0 || b == 0 {
            return 0
        } else {
            return a % b
        }
    }
}

print(Calculator2.init().addOperation.plus(a: 3, b: 5))                 // 8
print(Calculator2.init().multiplyOperation.multiply(a: 7, b: 2))       // 14

let asdf = Calculator2().divideOperation.divide(a: 7, b: 2)
print(asdf)   // 3.5





