import XCTest
@testable import BankApp

class BankAppTests: XCTestCase {

    private var account : Account!
    
    override func setUp() {
        super.setUp()
        
        self.account = Account()
    }
    
    func test_InitialBalanceZero() {
        XCTAssertTrue(self.account.balance == 0, "Balance is not zero!")
    }

    func test_DepositFunds(){
        self.account.deposit(100)
        XCTAssertEqual(100, self.account.balance)
    }
    
    func test_WithdrawFunds() {
        self.account.deposit(100)
        try? self.account.withdraw(50)
        XCTAssertEqual(50, self.account.balance)
    }
    
    func test_WithdrawFundsFromInsufficientBalance(){
        self.account.deposit(100)
        
        XCTAssertThrowsError(try self.account.withdraw(300)) { error in
            XCTAssertEqual(error as! AccountError, AccountError.insufficientFunds)
        }
    }
}
