//
//  LogKitTests.swift
//  LogKitTests
//
//  Created by Bruno Pires on 26/05/16.
//  Copyright © 2016 BlasterSystems. All rights reserved.
//

import XCTest
@testable import LogKit

class LogKitTests: XCTestCase {
    
    
    func test_01_Disabled() {
        
        LogKit.setup(.Disabled)
        LogKit.log(.Disabled, message: "Testing the logging framework")
        LogKit.log(.Error, message: "Testing the logging framework")
        LogKit.log(.Warning, message: "Testing the logging framework")
        LogKit.log(.Info, message: "Testing the logging framework")
        LogKit.log(.Debug, message: "Testing the logging framework")
        LogKit.log(.Verbose, message: "Testing the logging framework")
    }
    
    func test_02_Error() {
        
        LogKit.setup(.Error)
        LogKit.log(.Disabled, message: "Testing the logging framework")
        LogKit.log(.Error, message: "Testing the logging framework")
        LogKit.log(.Warning, message: "Testing the logging framework")
        LogKit.log(.Info, message: "Testing the logging framework")
        LogKit.log(.Debug, message: "Testing the logging framework")
        LogKit.log(.Verbose, message: "Testing the logging framework")
    }
    
    func test_03_Warning() {
        
        LogKit.setup(.Warning)
        LogKit.log(.Disabled, message: "Testing the logging framework")
        LogKit.log(.Error, message: "Testing the logging framework")
        LogKit.log(.Warning, message: "Testing the logging framework")
        LogKit.log(.Info, message: "Testing the logging framework")
        LogKit.log(.Debug, message: "Testing the logging framework")
        LogKit.log(.Verbose, message: "Testing the logging framework")
    }
    
    func test_04_Info() {
        
        LogKit.setup(.Info)
        LogKit.log(.Disabled, message: "Testing the logging framework")
        LogKit.log(.Error, message: "Testing the logging framework")
        LogKit.log(.Warning, message: "Testing the logging framework")
        LogKit.log(.Info, message: "Testing the logging framework")
        LogKit.log(.Debug, message: "Testing the logging framework")
        LogKit.log(.Verbose, message: "Testing the logging framework")
    }
    
    func test_04_Debug() {
        
        LogKit.setup(.Debug)
        LogKit.log(.Disabled, message: "Testing the logging framework")
        LogKit.log(.Error, message: "Testing the logging framework")
        LogKit.log(.Warning, message: "Testing the logging framework")
        LogKit.log(.Info, message: "Testing the logging framework")
        LogKit.log(.Debug, message: "Testing the logging framework")
        LogKit.log(.Verbose, message: "Testing the logging framework")
    }
    
    func test_06_Verbose() {
    
        LogKit.setup(.Verbose)
        LogKit.log(.Disabled, message: "Testing the logging framework")
        LogKit.log(.Error, message: "Testing the logging framework")
        LogKit.log(.Warning, message: "Testing the logging framework")
        LogKit.log(.Info, message: "Testing the logging framework")
        LogKit.log(.Debug, message: "Testing the logging framework")
        LogKit.log(.Verbose, message: "Testing the logging framework")
    }
}
