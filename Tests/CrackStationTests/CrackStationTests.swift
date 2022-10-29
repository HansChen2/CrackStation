import XCTest
@testable import CrackStation


final class CrackStationTests: XCTestCase {
    
    func testCrackStation_1() throws  {
        //Given
        let shaHash = "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"
        
        //When
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
       //Then
        XCTAssertEqual(crackedPassword, "a")
            
    }
    
    func testCrackStation_2() throws  {
        //Given
        let shaHash = "32526d1d6e8be7be93c88ba8c14ec09d51784d1a"
        
        //When
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        //Then
        XCTAssertEqual(crackedPassword, "B8")
            
    }
    
    func testCrackStation_3() throws  {
        //Given
        let shaHash = "22bdf47be3fd0a53ecdf5d6edbde0a2c6b97f0e0"
        
        //When
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        //Then
        XCTAssertEqual(crackedPassword, "Do")
            
    }
    
}
