
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
