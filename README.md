# CrackStation, a Decrypter implementation

This library is a crack station that is able to crack any password up to three characters in length.

### Overview

This library is a CrackStation that utilizes the SHA1 and SHA256 hash function to crack passwords [SHA1 Online](https://emn178.github.io/online-tools/sha1.html). It can crack any passwords up to three characters in length. In other words, cracking any three characters consisting of [A-Z, a-z, 0-9, ?, !] using the SHA1 and SHA256 hash function. 

### Mission Statement

This library is one of the projects of CS 561 of Oregon State University in the 2022 Fall term. This project is mainly for students to understand how CrackStation works and use the Xcode editor to write own CrackStation.

## Installation

### **Swift Package Manager**

The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code" It's integrated with the Swift build system to automate the process of downloading, compiling, and dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:

```dependencies: [
        .package(url:"", .upTonextMajor(from: ""))
    ]
```

### Usage

First, clone this project to your workplace. Then, you can check the unit test that cracks the password. You are able to change any SHA1 or SHA256 and the crackedPassword. If the unit test success, it means the SHA1 or SHA256 matches the crackedPassword and vice versa.

### **The API**

### **An example**

```public init() {
        myCrackStation = MyCrackStation()
        lookupTable = try! myCrackStation.loadDictionaryFromDisk()
    }
```
```public func decrypt(shaHash: String) -> String? {
        let crackedPassword = lookupTable[shaHash]
        return crackedPassword
    }
}
```

### Git tag

The version of the latest stable release: 1.1.0

### Author

Chun-Han Chen


