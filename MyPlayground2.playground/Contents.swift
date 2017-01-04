//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//枚举  值类型，赋值即拷贝  array，dictionary，set也是
enum Month :Int {  //数据可以不连续，可以不是Int，如果是string型的，默认值是变量名，还可以和变量相关联
    case January = 1,February
    case March
    case April
    case May
}

let currentMonth :Month = .April

12 - Month.May.rawValue

let month = Month(rawValue: 1)//可能传错值，需要解包

enum ATMStatus {
    case Success(Int)
    case Error(String)
    case Waiting   //可以有不关联的值   如果有整体的值就不能有关联值，反之也是
}

var balance = 1000

ATMStatus.Success(100)
ATMStatus.Error("Not enouth monety")

var websit :Optional<String> = Optional.some("www")

indirect enum ari {  //递归枚举
    case Number(Int)
    case add(ari,ari)   //indirect 放在case前也可以
    case mu(ari,ari)
}

//结构体
struct Location { //可以赋初值 ，可选型有默认初值  结构体是值类型，赋值即拷贝
    var latitude:Double=0
    var longitude:Double=0
    static var higitValue = 0 //这个是定义在Location类型
    //5,6
    init(coordinate:String) {  //创建一个构造函数，直接调用这个方法进行初始化
        self.latitude = 5
        self.longitude = 6   //构造函数如果是和结构体本身的初始化一样的话，需要用self.调用结构体内的参数
    }
    
    mutating func change(){  //mutating关键字修饰才能改变自身的变量
        self.latitude += 1
    }
}

//Location()
//let loca = Location(latitude: 30,longitude: 5.3)

//构造函数可以失败，返回空 在构造函数中将函数init设为init？

//int fload double bool string array dictionary set 等也是结构体
var a : Int = 1
a.distance(to: 100)

//类 是一个引用类型 赋值指向同一个地址 类中的变量不管类是不是变量都可以修改类中的变量，与结构体不同  可以用＝＝＝ 或者 ！＝＝进行类的判断 相同的值不同的地址为！＝＝  相同值相同地址为＝＝＝

class Locations {
    var latitude:Double=0
    var longitude:Double=0
    static var higitValue = 0 //static这个是定义在Location类上的 ，而不是每个类中的属性 调用需要是  Location.higitValue  结构体类似，static放在func前是结构体上的方法，而不是结构体内的方法
    //5,6
    init(coordinate:String) {
        self.latitude = 5
        self.longitude = 6
    }
    
    func change(){  //mutating关键字修饰才能改变自身的变量
        self.latitude += 1
    }
}

class LightBulb {
    static let maxCurrent = 30
    
    
    var current = 0 {
        willSet(newCurrent) {   //willset didset初始化不会被调用
                print("too younger")
        }
        
        didSet{ //属性观察器
            if current == LightBulb.maxCurrent {
                print("Waring")
            } else if current > LightBulb.maxCurrent{
                current = oldValue
                print("too hight")
            }
            print("current is  \(current)")
        }
    }
    
    lazy var sum : Int = { //延迟属性  ：Int不能省略 关键字必须是var
        var res = 0
        for i  in 0...self.current {
            res += i
        }
        return res
    }()

}

let bulb = LightBulb()
bulb.current = 25
bulb.current = 50
bulb.current = 2

//public 模块外访问 internal 被本模块访问 private 被本文件访问 指的是文件之间

//单例
let gameManager = GameManager.defaultGameManager;
gameManager.addScore()
gameManager.score


let ga = GameManager.defaultGameManager;
gameManager.addScore()
gameManager.score

//继承，如果不希望别人继续继承需要在类前final修饰表示链条的最后 重载父类中的方法或者属性需要用override修饰 不希望被重载的方法用final修饰 构造方法需要调用父类的构造方法，用supper.init调用，注意需要在子类初始化完成后调用。。。不调用父类，也可以调用自己的构造函数，在调用自己的构造函数的构造函数中需要用convenience修饰（便利构造函数和指定构造函数）   整个构造函数分为两部分（构造函数的两段式）：1.构造整个类，2。进一步完善类相关属性的值
//构造函数可以有默认参数，构造参数能够被重载




class Person {
    var name:String = ""
    var age:Int = 0
    init(name : String , age :Int) {
        self.name = name
        self.age = age
    }
}

var person = Person(name: "lalla", age: 9)
person.name

class User :Person {
    var skill:String = "read"
    init(name:String, age:Int , skill:String) {
        self.skill = skill
        super.init(name: name, age: age)
        self.name
    }
}

var user = User(name:"json",age:6,skill:"hhh")
user.name



















