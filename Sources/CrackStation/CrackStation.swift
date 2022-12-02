import Foundation

public struct CrackStation: Decrypter {
    
    private let lookupTable : [String : String]
    
    public init() {
        do{
            lookupTable = try findlookupTable().loadDictionaryFromDisk()
        } catch { lookupTable = ["":""] }
        print("error")
    }
    
    public func decrypt(shaHash: String) -> String? {
        let crackedPassword = lookupTable[shaHash]
        return crackedPassword
    }
}

public class findlookupTable {
    
    func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        
        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)
        
        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }
}


