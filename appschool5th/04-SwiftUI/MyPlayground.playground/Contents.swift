import UIKit

var greeting = "Hello, playground"
/*
class 클래스 이름: 부모 클래스 {
    // 프로퍼티
    // let, var 정의
    //인스턴스 메서드
    // 타입 메서드
}
*/

class BankAccount {
    //프로퍼티
    var accountBlance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    var balanceLessFees: Float {
        get {
            return accountBlance - fees
        }
        set(newBalance) {
            accountBlance = newBalance - fees
        }
    }
    
    // lazy는 반드시 값을 가지고 있어야해서 var에서만 사용가능, let에서 사용불가
    lazy var myPorperty: String = {
//        오래걸리는 작업
//       var result = ressourceIntensiveTask()
//        result = porcessData(data: result)
//        return result
        return ""
    }()
   
    
    init() {
        accountBlance = 0
        accountNumber = 0
    }
    
    
    //이니셜라이저
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBlance = balance
    }
    
    deinit {
        //deinit을 만들어줘야지 안정적인 프로그램이됨
        //필요한 정리작업수행
    }
    
    //인스턴스 메서드
    func displayBlance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBlance)")
    }
    //class 타입 메서드 상속 재정의 가능, static는 재정의 불가능
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var bankAccount = BankAccount()

bankAccount.balanceLessFees = 12123.12

print(bankAccount.accountBlance)
print(bankAccount.accountNumber)
bankAccount.displayBlance()
