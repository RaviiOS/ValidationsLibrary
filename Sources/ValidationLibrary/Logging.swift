//
//  File.swift
//  
//
//  Created by Ravi Kumar Yaganti on 16/04/21.
//

import Foundation

import Foundation

public enum LogLevel: String {
    case trace = "✈️ Trace", debug = "🛠 Debug", info = "\u{203C}\u{FE0F} Info", warn = "💡 Warn", error = "🚨 Error", fatal = "🚧 Fatal"
    
    public var description: String  {
        rawValue
    }
}

public protocol Logging { }

public extension Logging {
    
    func log(message: String, loglevel: LogLevel = .debug) {
        print("[\(loglevel.description)] \(Date()): \(message)")
    }
}
