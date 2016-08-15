//
//  LogKit.swift
//  LogKit
//
//  Created by Bruno Pires on 26/05/16.
//  Copyright © 2016 Bruno Pires. All rights reserved.
//

import Foundation

class LogKit {
    
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
    class func log(level:LogLevel,
                   message:AnyObject,
                   _ path: String = #file,
                     _ function: String = #function,
                       _ lineNumber: Int = #line){
        
        let filePath = path.components(separatedBy: "/")
            .last!
            .replacingOccurrences(of: "swift", with: function)
            .replacingOccurrences(of:"()", with: "")
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss:SSS"
        
        if self.instance.level >= level && level != LogLevel.Disabled{
            print("\(level.description.uppercased()) | \(dateFormatter.string(from: NSDate() as Date)) [\(filePath):\(lineNumber)]: \(message)")
        }
    }
}


//MARK: LogLevel enum and Comparable protocol implementation
enum LogLevel: Int, Comparable {
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

func >(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue > rhs.rawValue
}

func <(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue < rhs.rawValue
}

func >=(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue >= rhs.rawValue
}

func <=(lhs: LogLevel, rhs: LogLevel) -> Bool{
    return lhs.rawValue <= rhs.rawValue
}
