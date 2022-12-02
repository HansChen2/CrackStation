# CrackStation, a Decrypter implementation

This library is a crack station that is able to crack any unsalted password up to three characters in length. For more information: [Salt (cryptography)](https://en.wikipedia.org/wiki/Salt_(cryptography))

## Overview

This library is a CrackStation that utilizes the SHA1 and SHA256 hash function to crack passwords [SHA1 Online](https://emn178.github.io/online-tools/sha1.html). It can crack any unsalted passwords up to three characters in length. In other words, cracking any three characters consisting of [A-Z, a-z, 0-9, ?, !] using the SHA1 and SHA256 hash function. 

## Mission Statement

This library is one of the projects of CS 561 of Oregon State University in the 2022 Fall term. This project is mainly for students to understand how CrackStation works and use the Xcode editor to write own CrackStation. 

## Installation

### **Swift Package Manager**

The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code" It's integrated with the Swift build system to automate the process of downloading, compiling, and dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:

```
dependencies: [
        .package(url:"git@github.com:HansChen2/CrackStation.git", .upToNextMajor(from: "1.1.0"))
    ]
```

## Usage

### **The API**

1. The function `init` is to create decrypter and then generate data.json.

2. The function `decrypt` is the password that decrypts the hashes into 1 to 3 characters.

### **An example**

Below is an example of call site. I assign the shaHash value to "shaHash". Then decrypt it through the function of CrackStation() and decrypt.
```
final class CrackStationTests: XCTestCase {
    
    func testCrackStation_1() throws  {
        let shaHash = "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"
        
        let crackedPassword = CrackStation().decrypt(shaHash: shaHash)
        
        XCTAssertEqual(crackedPassword, "a")
        
    }

```



## Git tag

The version of the latest stable release: 1.2.0

## Author

Chun-Han Chen


