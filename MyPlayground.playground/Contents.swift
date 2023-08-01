import UIKit

// Day 01
// 다크 모드 여부

var isDarkModeOn: Bool = false

let age : Int = 10

print("야곰의 나이는 \(age) 입니다");


class Person {
  var name: String = "yagom"
  var age: Int = 10
}

let yagom: Person = Person()

print(yagom)

print("\n########\n")
dump(yagom)


let age0: Int = 10
var age2: Int = 15

let constant: String = "변경이 불가능한 상수 let"
var variable: String = "변경이 가능한 변수 var"

// 값의 타입이 명확하다면 타입은 생략 가능
let sum: Int
let inputA: Int = 100
let inputB: Int = 150

sum = inputA + inputB

print(sum)

var nickName: String


nickName = "yagom"
print(nickName)


// Swift의 기본 데이터 타입
/**
 Bool, Int(64bit, 0 양수, 음수), UInt(양의 정수), Float, Double, Character, String
 */

// Bool
let someBool: Bool = false

// Int
let someInt: Int = 10

// UInt
var someUInt: UInt = 100
//someUInt = someInt // UInt 타입에 Int 타입의 값을 할당할 수 없다

// Float (부동소수 32bit 타입)
var someFloat: Float = 100.14
someFloat = 3

// Double (부동소수 64bit 타입)
var someDouble: Double = 100.14
someDouble = 3

// Character
var someCharacter: Character = "1"
someCharacter = "A"
//someCharacter = "하하하"

print(someCharacter)

// String
var someString: String = "하하하하하"

someString = someString + " 웃으면 복이와요"
//someString = someCharacter // error: cannot assign value of type 'Character' to type 'String'

print(someString)

// Any - 스위프트의 모든 타입을 지칭하는 키워드
var someAny: Any = 100
someAny = "dfjalkjkdf"
someAny = 100.34

print(someAny)


// AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
class SomeClass{}
var someAnyObject: AnyObject = SomeClass()


// nil - 없음을 의미하는 키워드
// 다른 언어의 null 과 유사
//someAny = nil // Any 타입에 값이 없음을 의미하는 nil 타입을 할당할 수 없다
//someAnyObject = nil // AnyObject 타입에 값이 없음을 의미하는 nil 타입을 할당할 수 없다.



/**
 Array, Dictionary, Set
 */
// Array - 순서가 있는 리스트 컬렉션
var integers: Array<Int> = Array<Int>() // 빈 배열 생성
var doubles: Array<Double> = [Double]() // 축약 리터럴 표현도 있다
var strings: [String] = [String]()
var characters: [Character] = []
let immutableArray = [1,2,3] // let으로 Array를 선언하면 불변 Array

integers.append(1)
integers.append(2)

integers.append(200)

integers.contains(200)

print(integers.count)
print(integers[0])

integers.remove(at:0)
integers.removeLast()
integers.removeAll()



// Dictionary - 키와 값의 쌍으로 이루어져 있다. 자바스크립트의 객체라고 생각
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary

// key에 해당되는 값을 재할당 가능
anyDictionary["someKey"] = 100.14


// removeValue와 nil 할당은 유사한 표현이라고 볼 수 있다
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil


let emptyDictonary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// emptyDictonary["key"] = "value" // let으로 Dictionary를 선언한 경우 Array에서처럼 key에 새로운 값을 할당할 수 없다.

// let someValue: String = initializedDictionary["name"]
// initializedDictionary라는 Dictionary 타입의 값에 name이라는 key가 있을 수도 있고 없을 수도 있기 때문이다. 불확실성 때문에

// Set - 축약 문법이 없다
var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet) // 99를 여러번 넣어도 중복이 없는 컬렉션이기 때문에 99 하나만 들어있게 된다

integerSet.contains(100)
integerSet.remove(99)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB)

let sortedUnion: [Int] = union.sorted()

let intersection: Set<Int> = setA.intersection(setB)

let subtracting: Set<Int> = setA.subtracting(setB)

var someArray: Array<Int> = Array<Int>()

someArray.append(0)
someArray.append(2)
someArray.append(200)
someArray.append(400)

someArray.remove(at:0)
someArray.removeFirst()
someArray.removeLast()
print(someArray.count)


var someDictionary: Dictionary<String, Any> = Dictionary<String, Any>()

someDictionary["apple"] = "apple"


// 함수
func getName(name: String) -> String {
  return "\(name) is name"
}

// Void는 '없다'라는 타입 별칭의 의미를 갖습니다
func getProp(name: String) -> Void {
  print(name)
  return
}

getName(name: "kyle")
getProp(name: "steve")

func getMaxIntegerValue() -> Int {
  return Int.max
}

getMaxIntegerValue()


func getSimple() -> Void { print("hello") }

getSimple()


// 1. 매개변수 기본 값 (매개변수 목록 중에 제일 뒤에 위치하는 것이 좋다)
func greeting(friend: String, me: String = "kyle") -> Void {
  print("hello \(friend)! I'm \(me)")
}

greeting(friend: "steve")
greeting(friend: "steve", me: "steven")

// 2. 전달인자 레이블 (Argument Label)
// 함수를 호출할 때 함수 사용자의 입장에서 매개변수의 역할을 더 명확하게 표현하기 위해 사용합니다.
// 전달인자 레이블은 변경하여 동일한 이름의 함수를 중복으로 생성가능합니다.
// 함수 외부에서 전달인자의 의미와 함수 내부에서의 전달인자의 의미가 상이하거나 사용자 입장에서 전달인자의 역할을 표현하고 싶은 경우 전달인자 레이블을 사용하는 것이 좋다

func greeting(to friend: String, from me: String = "kyle") -> Void {
  print("Hello! \(friend) It's \(me)")
}

greeting(to: "steve")
greeting(to: "steve", from: "meen")


// 3. 가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있다.-> JS의 rest parameter와 유사

func sayHelloToMyFriends(me: String, friends: String...) -> String {
  return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToMyFriends(me: "kyle", friends: "hana", "eric", "wing"))


// 4. 데이터 타입으로서의 함수

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "steve")


someFunction = greeting(friend:me:)
someFunction("eric", "steve")


func greeting2(to friend: String, from me: String) -> Void{
  print("Hello \(friend) It's \(me)")
}

func runAnother(anotherFunc: (String, String) -> Void) {
  anotherFunc("jenny","rose")
}

runAnother(anotherFunc: greeting2(to:from:))


let someInteger = 100

if someInteger < 100 {
  print("100 미만")
} else if someInteger > 100 {
  print("100 초과")
} else {
  print("100")
}

// swift의 조건에는 항상 Bool 타입이 들어와야 한다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에 컴파일 오류가 발생한다
// Type 'Int' cannot be used as a boolean; test for '!= 0' instead



switch someInteger {
case 0:
  print("zoo")
case 1..<100:
  print("1-99")
case 100:
  print("100")
case 101...Int.max:
  print("over 100")
default:
  print("unknown")
}



// 정수 외의 대부분의 타입을 사용할 수 있다.
// default 구문은 꼭 작성해줘야 한다
// 명시적으로 break를 작성하지 않아도 자동으로 break가 적용된다.
// fallthrough 키워드를 사용해 통과할 수 있다.


var array: [Int] = [1,2,3]
let dictionary: [String: Int] = ["yagom": 10, "eric": 15, "mike": 12]

for item in array {
  print(item)
}


// Dictionary의 item은 key와 value로 구성된 tuple 타입으로 들어오게 된다.
for (name, age) in dictionary {
  print("\(name): \(age)")
}


while array.count > 1 {
  array.removeLast()
}


// repeat - while
// 기존의 do while과 유사하다
repeat {
  integers.removeLast()
} while integers.count > 1
