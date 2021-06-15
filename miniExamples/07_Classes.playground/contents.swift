// Simple class

class BankAccount: CustomStringConvertible{
    var name: String
    var balance: Double
    
    static var numberOfBankAccounts = 0
    
    init(name: String, balance: Double){
        self.name = name
        self.balance = balance
        BankAccount.numberOfBankAccounts += 1
    }
    
    static func getNumberOfBankAccounts() -> Int {
        return BankAccount.numberOfBankAccounts
    }
    
    func deposit(amount: Double){
        self.balance += amount
    }
    
    var description: String{
        return "\(name): $\(balance)"
    }
    
    func withdraw(amount: Double){
        self.balance -= amount
    }
}


var lokiAccount = BankAccount(name: "Loki", balance: 100.00)
lokiAccount.name
lokiAccount.balance += 100

lokiAccount.deposit(amount: 50)
lokiAccount.withdraw(amount: 10)

var lokiAccount2 = BankAccount(name: "Loki", balance: 100.00)
BankAccount.getNumberOfBankAccounts()


// Subclass

class AtmBankAccount: BankAccount {
    var withdrawFee: Double
    
    override convenience init(name: String, balance: Double) {
//        withdrawFee = 2.0
//        super.init(name: name, balance: balance)
        self.init(name: name, balance: balance , withdrawFee: 2.0)
    }
    
    convenience init(){
        self.init(name:"Unknown", balance: 0, withdrawFee: 2)
    }
    
    
    init(name: String, balance: Double, withdrawFee: Double){
        self.withdrawFee = withdrawFee
        super.init(name: name, balance: balance)
    }
    
    override func withdraw(amount: Double) {
        super.withdraw(amount: amount)
        balance -= withdrawFee
    }
}

//var bobAccount = AtmBankAccount(name: "Bob", balance: 100, withdrawFee: 33)



var bobAccount = AtmBankAccount()
bobAccount.deposit(amount: 100)
bobAccount.withdraw(amount: 40)





