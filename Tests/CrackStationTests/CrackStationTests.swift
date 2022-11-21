import XCTest
@testable import CrackStation


final class CrackStationTests: XCTestCase {
    
    func testCrackStation_1() throws  {
        let shaHash = "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"
        
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        XCTAssertEqual(crackedPassword, "a")
        
    }
    
    func testCrackStation_2() throws  {
        let shaHash = "32526d1d6e8be7be93c88ba8c14ec09d51784d1a"
        
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        XCTAssertEqual(crackedPassword, "B8")
        
    }
    
    func testCrackStation_3() throws  {
        let shaHash = "22bdf47be3fd0a53ecdf5d6edbde0a2c6b97f0e0"
        
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        XCTAssertEqual(crackedPassword, "Do")
        
    }
    
    func testCrackStation_4() throws  {
        let shaHash = "2d86c2a659e364e9abba49ea6ffcd53dd5559f05"
        
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        XCTAssertEqual(crackedPassword, "???")
        
    }
    
    func testCrackStation_5() throws  {
        let shaHash = "a03b221c6c6eae7122ca51695d456d5222e524889136394944b2f9763b483615"
        
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        XCTAssertEqual(crackedPassword, "???")
        
    }
    
}
