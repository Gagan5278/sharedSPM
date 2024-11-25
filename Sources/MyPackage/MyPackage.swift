// The Swift Programming Language
// https://docs.swift.org/swift-book

import shared

public class OpenClass {
    public init() {}
    
    public func openView() {
        
    }
    
    public var greeting: String {
        Greeting().greet()
    }
}
