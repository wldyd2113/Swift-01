
//구조체를 클래스처럼 사용하려면 프로토콜써야함
protocol MessageBuilder {
    var name: String { get }
    func buildMessage () -> String
}

class Myclass: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    
    func buildMessage () -> String {
        return "Hello" + name //반환타입과 마지막 표현식이 일치하면 return 생략 가능
    }
    
}

func doubleFunc1 (value: Int) -> some Equatable { //Equatable은 프로토콜, some반환타입을 명확하게 알려주기 싫어서
    return value * 2
}

func doubleFunc2 (value: String) -> some Equatable {
    value + value
}

let intOne = doubleFunc1(value: 10)
print(intOne)
let stringOne = doubleFunc2(value: "Hello")
print(stringOne)

/*
//동작하지 않는다, 불투명 반환타입
if(intOne == stringOne) {
    print("Tjey match")
}
*/
