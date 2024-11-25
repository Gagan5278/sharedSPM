// The Swift Programming Language
// https://docs.swift.org/swift-book

import shared
import SwiftUI

public class OpenClass {
    public init() {}
    
    @MainActor
    public func openView() -> any View {
        ContentView()
    }
    
    public var greeting: String {
        Greeting().greet()
    }
}
