//
//  ViewModel.swift
//  iosApp
//
//  Created by Gagan Vishal Mishra on 22.11.24.
//  Copyright © 2024 orgName. All rights reserved.
//
import shared

public class ViewModel {
    let greeting: Greeting
    
    init() {
        self.greeting = Greeting()
    }
    
    func sum(num1: Int32, num2: Int32) -> String {
        "Sum i \(greeting.sumNumber(a: num1, b: num2))"
    }
    
    var message: String {
        greeting.greet()
    }
    
    func userList() -> [User] {
        greeting.usersList()
    }
}
