public struct CrackStation: Decrypter {
    
    let myCrackStation : MyCrackStation
    let lookupTable : [String : String]
    
    public init() {
        myCrackStation = MyCrackStation()
        lookupTable = try! myCrackStation.loadDictionaryFromDisk()
    }
    
    public func decrypt(shaHash: String) -> String? {
        let crackedPassword = lookupTable[shaHash]
        return crackedPassword
    }
}
