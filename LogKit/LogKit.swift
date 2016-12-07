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
    private var level:LogLevel = .disabled
    
    public class func setup(level:LogLevel){
        self.instance.level = level
    }
    
    /// *Writes in the debug console the data*
    ///
    /// - parameters:
    ///   - level: LogLevel wanted
    ///   - message: message to be written in the debug console
    /// - returns: Void
    public class func log(level:LogLevel,
                   message:Any,
                   _ path: String = #file,
                     _ function: String = #function,
                       _ lineNumber: Int = #line){
        
        let filePath = path.components(separatedBy: "/")
            .last!
            .replacingOccurrences(of: "swift", with: function)
            .replacingOccurrences(of:"()", with: "")
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss:SSS"
        
        if self.instance.level >= level && level != .disabled{
            print("\(level.description.uppercased()) | \(dateFormatter.string(from: NSDate() as Date)) [\(filePath):\(lineNumber)]: \(message)")
        }
    }
}


//MARK: LogLevel enum and Comparable protocol implementation
public enum LogLevel: Int, Comparable {
    case disabled   = 0
    case error      = 1
    case warning    = 2
    case info       = 3
    case debug      = 4
    case verbose    = 5
    
    var description: String {
        switch self {
        case .disabled:
            return "Disabled"
        case .error:
            return "  Error"
        case .warning:
            return "Warning"
        case .info:
            return "   Info"
        case .debug:
            return "  Debug"
        case .verbose:
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
