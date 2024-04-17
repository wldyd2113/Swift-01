
//구조체는 복사, 프로토콜을 이용해서 확장해나감
struct SampleStruct {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() -> String{
        return "Hello" + name
    }
}

class SampleClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() -> String{
        return "Hello" + name
    }
}

let myStruct1 = SampleStruct(name: "Mark")
var myStruct2 = myStruct1
myStruct2.name = "Daivd"

print(myStruct1.name)
print(myStruct2.name)

//클래스는 해당 주소 값에 가서 주소 값을 바꿔줌 그래서 다변한거, 클래스는 참조, 상속하면서 확장해나감
let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "Daivd"

print(myClass1.name)
print(myClass2.name)


enum Temperature {
    case hot
    case warm
    case cold(centigrade: Int)
}

func displayTemperature(temp: Temperature) {
    switch temp {
    case .hot :
        print("It is hot")
    case .warm:
        print("It is warm")
    case .cold(let centigrade) where centigrade <= 0:
        print("Ice warning \(centigrade) degrees")
    case .cold:
        print("It is cold")
    }
}

displayTemperature(temp: .cold(centigrade: -10))
