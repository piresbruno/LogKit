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
        
        LogKit.setup(level: .disabled)
        LogKit.log(level: .disabled, message: "Testing the logging framework")
        LogKit.log(level: .error, message: "Testing the logging framework")
        LogKit.log(level: .warning, message: "Testing the logging framework")
        LogKit.log(level: .info, message: "Testing the logging framework")
        LogKit.log(level: .debug, message: "Testing the logging framework")
        LogKit.log(level: .verbose, message: "Testing the logging framework")
    }
    
    func test_02_Error() {
        
        LogKit.setup(level: .error)
        LogKit.log(level: .disabled, message: "Testing the logging framework")
        LogKit.log(level: .error, message: "Testing the logging framework")
        LogKit.log(level: .warning, message: "Testing the logging framework")
        LogKit.log(level: .info, message: "Testing the logging framework")
        LogKit.log(level: .debug, message: "Testing the logging framework")
        LogKit.log(level: .verbose, message: "Testing the logging framework")
    }
    
    func test_03_Warning() {
        
        LogKit.setup(level: .warning)
        LogKit.log(level: .disabled, message: "Testing the logging framework")
        LogKit.log(level: .error, message: "Testing the logging framework")
        LogKit.log(level: .warning, message: "Testing the logging framework")
        LogKit.log(level: .info, message: "Testing the logging framework")
        LogKit.log(level: .debug, message: "Testing the logging framework")
        LogKit.log(level: .verbose, message: "Testing the logging framework")
    }
    
    func test_04_Info() {
        
        LogKit.setup(level: .info)
        LogKit.log(level: .disabled, message: "Testing the logging framework")
        LogKit.log(level: .error, message: "Testing the logging framework")
        LogKit.log(level: .warning, message: "Testing the logging framework")
        LogKit.log(level: .info, message: "Testing the logging framework")
        LogKit.log(level: .debug, message: "Testing the logging framework")
        LogKit.log(level: .verbose, message: "Testing the logging framework")
    }
    
    func test_04_Debug() {
        
        LogKit.setup(level: .debug)
        LogKit.log(level: .disabled, message: "Testing the logging framework")
        LogKit.log(level: .error, message: "Testing the logging framework")
        LogKit.log(level: .warning, message: "Testing the logging framework")
        LogKit.log(level: .info, message: "Testing the logging framework")
        LogKit.log(level: .debug, message: "Testing the logging framework")
        LogKit.log(level: .verbose, message: "Testing the logging framework")
    }
    
    func test_06_Verbose() {
    
        LogKit.setup(level: .verbose)
        LogKit.log(level: .disabled, message: "Testing the logging framework")
        LogKit.log(level: .error, message: "Testing the logging framework")
        LogKit.log(level: .warning, message: "Testing the logging framework")
        LogKit.log(level: .info, message: "Testing the logging framework")
        LogKit.log(level: .debug, message: "Testing the logging framework")
        LogKit.log(level: .verbose, message: "Testing the logging framework")
    }
}
