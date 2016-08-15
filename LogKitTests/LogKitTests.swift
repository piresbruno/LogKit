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
        
        LogKit.setup(level: .Disabled)
        LogKit.log(level: .Disabled, message: "Testing the logging framework")
        LogKit.log(level: .Error, message: "Testing the logging framework")
        LogKit.log(level: .Warning, message: "Testing the logging framework")
        LogKit.log(level: .Info, message: "Testing the logging framework")
        LogKit.log(level: .Debug, message: "Testing the logging framework")
        LogKit.log(level: .Verbose, message: "Testing the logging framework")
    }
    
    func test_02_Error() {
        
        LogKit.setup(level: .Error)
        LogKit.log(level: .Disabled, message: "Testing the logging framework")
        LogKit.log(level: .Error, message: "Testing the logging framework")
        LogKit.log(level: .Warning, message: "Testing the logging framework")
        LogKit.log(level: .Info, message: "Testing the logging framework")
        LogKit.log(level: .Debug, message: "Testing the logging framework")
        LogKit.log(level: .Verbose, message: "Testing the logging framework")
    }
    
    func test_03_Warning() {
        
        LogKit.setup(level: .Warning)
        LogKit.log(level: .Disabled, message: "Testing the logging framework")
        LogKit.log(level: .Error, message: "Testing the logging framework")
        LogKit.log(level: .Warning, message: "Testing the logging framework")
        LogKit.log(level: .Info, message: "Testing the logging framework")
        LogKit.log(level: .Debug, message: "Testing the logging framework")
        LogKit.log(level: .Verbose, message: "Testing the logging framework")
    }
    
    func test_04_Info() {
        
        LogKit.setup(level: .Info)
        LogKit.log(level: .Disabled, message: "Testing the logging framework")
        LogKit.log(level: .Error, message: "Testing the logging framework")
        LogKit.log(level: .Warning, message: "Testing the logging framework")
        LogKit.log(level: .Info, message: "Testing the logging framework")
        LogKit.log(level: .Debug, message: "Testing the logging framework")
        LogKit.log(level: .Verbose, message: "Testing the logging framework")
    }
    
    func test_04_Debug() {
        
        LogKit.setup(level: .Debug)
        LogKit.log(level: .Disabled, message: "Testing the logging framework")
        LogKit.log(level: .Error, message: "Testing the logging framework")
        LogKit.log(level: .Warning, message: "Testing the logging framework")
        LogKit.log(level: .Info, message: "Testing the logging framework")
        LogKit.log(level: .Debug, message: "Testing the logging framework")
        LogKit.log(level: .Verbose, message: "Testing the logging framework")
    }
    
    func test_06_Verbose() {
    
        LogKit.setup(level: .Verbose)
        LogKit.log(level: .Disabled, message: "Testing the logging framework")
        LogKit.log(level: .Error, message: "Testing the logging framework")
        LogKit.log(level: .Warning, message: "Testing the logging framework")
        LogKit.log(level: .Info, message: "Testing the logging framework")
        LogKit.log(level: .Debug, message: "Testing the logging framework")
        LogKit.log(level: .Verbose, message: "Testing the logging framework")
    }
}
