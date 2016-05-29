//
//  LogKit.swift
//  LogKit
//
//  Created by Bruno Pires on 26/05/16.
//  Copyright © 2016 Bruno Pires. All rights reserved.
//

import Foundation

public class LogKit {
    
    private static let instance = LogKit()
    private var level:LogLevel = .Disabled
    
    class func setup(level:LogLevel){
        self.instance.level = level
    }
    
    /// *Writes in the debug console the data*
    ///
    /// - parameters:
    ///   - level: LogLevel wanted
    ///   - message: message to be written in the debug console
    /// - returns: Void
    public class func log(level:LogLevel,
                   message:AnyObject,
                   _ path: String = #file,
                     _ function: String = #function,
                       _ lineNumber: Int = #line){
        
        let filePath = path.componentsSeparatedByString("/")
            .last!
            .stringByReplacingOccurrencesOfString("swift", withString: function)
            .stringByReplacingOccurrencesOfString("()", withString: "")
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss:SSS"
        
        if self.instance.level >= level && level != LogLevel.Disabled{
            print("\(level.description.uppercaseString) | \(dateFormatter.stringFromDate(NSDate())) [\(filePath):\(lineNumber)]: \(message)")
        }
    }
}


//MARK: LogLevel enum and Comparable protocol implementation
public enum LogLevel: Int, Comparable {
    case Disabled   = 0
    case Error      = 1
    case Warning    = 2
    case Info       = 3
    case Debug      = 4
    case Verbose    = 5
    
    var description: String {
        switch self {
        case .Disabled:
            return "Disabled"
        case .Error:
            return "  Error"
        case .Warning:
            return "Warning"
        case .Info:
            return "   Info"
        case .Debug:
            return "  Debug"
        case .Verbose:
            return "Verbose"
        }
    }
}

public func >(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue > rhs.rawValue
}

public func <(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue < rhs.rawValue
}

public func >=(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue >= rhs.rawValue
}

public func <=(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue <= rhs.rawValue
}