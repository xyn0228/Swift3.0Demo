//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var imInt: Int = 8

let big = 1_000_000

var a = 1.25e10
var b = 1.3e-5

let isFinish : Bool = false

if isFinish {
    print("false")
} else {
    print("true")
}

var point = ( 5 , 6 ) //tuple

var httpResponse = ( 404 , "Not Found")

var point2:(x: Int,y: Int ,Int) = ( 8 , 9 , 8 )

let (x, y ) = point
x
y


point2.0

let point3 = (x: 3,y: 4)
point3.x

// _ 下划线忽略一些值

print(1 ,2 ,3 ,separator:"***")
print(1 ,2 ,3 ,separator:"***" , terminator:"&")
print("\(point.0)")

var m = 333
var mm = -m

for a in 1..<10 {
    print(a)
}

for b in 1...10 {
    print(b)
}

for c in (1..<10).reversed() {
    print(c)
}

//for d in from:3 to 9 by:2{
//    
//}

var result = 1
var base = 2
var  power = 10
for _ in 1...power {
    result *= base
}
print(result)

while a==1 {
    print("yes")
}

var i = 3
repeat {
   i += 1
}while (i != 6);

//不会继续向下执行
switch i {
case 6,7:
    print(i)
default:
    () // break
}

findAnswer:
for m in 1...300 {
    for n in 1...300 {
        if m * m * m * m - n * n == 15 * m * n {
            print(m,n)
            break findAnswer
        }
    }
}

let point4 = ( 3 , 3 )
switch point4 {
case let (x,y) where x == y: // let能进行相关操作
    print("x == y")
default:
    print("x != y")
}

//case 10...19:
if case 10...19 = point.0 {
    print("yes")
} else {
    print("no")
}

for case let i in 1...100 where i % 3 == 0{
    print(i)
}

func buy(money:Int ,price: Int ,capacity: Int ,volume: Int) {
    guard money >= price else {
        print("not money")
        return
    }
    
    guard capacity >= volume else {
        print("not money")
        return
    }
    
    print("i can buy it")
}

var str5 = String("hello")
var empty = String() //空串

empty.isEmpty

str5?.isEmpty

empty += str5!

for c in str5!.characters {
    print(c)
}

let chara:Character = "a"
str5!.append(chara)

str5!.append(" w")

let cool:Character = "\u{1F60E}"
str5?.characters.count

str5?.endIndex

str.uppercased()
str.lowercased()
str.capitalized
str.contains("Hello")
str.hasPrefix("H")
str.hasSuffix("d")

let s:String = NSString(format:" he------") as String

let s2 : NSString = NSString(format:" he------")

var errorCode : String? = "404" //可选型
//unwrap
"hello " + errorCode! //强制

if let code = errorCode {
    "hello " + code
}

errorCode?.uppercased()

let message = errorCode ?? "Not error"  //判断是否为空，为空显示not error 否则显示自身

var vowels:Array<String> = ["A","E","I","O","U"] //数组能进行比较

var emp = [Int]()
var allZero = [Int].init(repeating: 0, count: 5)
allZero.count
allZero.isEmpty
allZero[0]

allZero.first
allZero.last
allZero.min()
allZero.max()

allZero[2..<4]
allZero[0...4]

allZero.contains(1)
allZero.index(of: 2)

for char in vowels {
    print(char)
}

for (i , char) in vowels.enumerated() {
    print("\(i) : \(char) ")
}

vowels.append("hello")
vowels += ["swift"]

vowels.insert("hi", at: 4)

vowels.removeLast()
vowels.removeFirst()
vowels.remove(at: 2)
vowels[0] = "isE"
vowels[0...2] = ["change"]
vowels

var user = ["name" : "haha"]
user.updateValue("json", forKey: "name")

user["addresss"] = "beijing"
user.updateValue("lalala", forKey: "enmoush")

user.removeValue(forKey: "enmoush")

//集合和数组类似，无序，不重复
var skillA = Set(["A","B","C"])
var skillB = Set(["A","C","D"])
var skillC = Set(["A","D","B"])
skillA.union(skillB)
skillA
skillA.formUnion(skillB)
skillA

skillA.intersection(skillB)
skillA.subtract(skillB)
skillA
skillA.isSubset(of: skillB)  //子集
skillA.isStrictSubset(of: skillC) //真子集

skillA.isSuperset(of: skillC) //超集。。。

skillA.isDisjoint(with: skillC)  //完全没有重合的

func sayHello(name: String )->String {
    return "hello " + name
}
sayHello(name: "world")

func mean( _ numbers : Double...) -> Double {  //变长的参数 ，但只能有一个
    var  sum: Double = 0
    for number in numbers {
        sum += number
    }
    return sum / Double(numbers.count)
}

mean(8,6,8,8)

func swapTwoIns( _ a:inout Int , _ b: inout Int) {
    let t: Int = a
    a = b
    b = t
    
//    (a, b) = (b, a)
}

var aa:Int = 7
var bb:Int = 9

swapTwoIns(&aa, &bb)

func biggerNumber(a:Int ,_ b :Int) ->Bool {
    return a > b
}

allZero.sort(by: biggerNumber)  //函数可以当作变量传入另一个函数当做参数
allZero.sort()

func changeScore(score:Int) ->Int {
    return Int((sqrt(Double(score)) * 10))
}

func fail(score :Int) ->Bool {
    return score < 60
}

//特殊的函数
allZero.map(changeScore)
allZero.filter(fail)

allZero.reduce(0, +)  // 求和
//函数的返回值可以是函数


//闭包
allZero.sort(by: {
    (a:Int , b:Int) -> Bool in
    return a > b
})

allZero.sort(by: {a,b in a > b}) //简写闭包
allZero.sort(by:){a,b in a > b} //闭包是最后的参数可以这么写，如果只有一个参数并且是闭包（）也可以省略
allZero.sort(by: {$0 > $1})//$0 $1等是函数给的默认参数
allZero.sort(by: >)  //>本身就是一个函数

//闭包：内容的捕获 类似全局变量
































