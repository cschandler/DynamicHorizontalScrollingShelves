//
//  ExampleData.swift
//  DynamicHorizontalScrollingShelves
//
//  Created by Charles Chandler on 2/19/18.
//  Copyright © 2018 Charles Chandler. All rights reserved.
//

import Foundation

struct ExampleData {
    
    static let dataSet1 = [
        ExampleModel(title: "Lorem ipsum", body: "dolor sit amet, consectetur adipiscing elit,"),
        ExampleModel(title: "sed do eiusmod", body: "tempor incididunt"),
        ExampleModel(title: "Duis aute", body: "irure dolor in reprehenderit "),
        ExampleModel(title: "in voluptate", body: nil),
        ExampleModel(title: "velit esse cillum dolore eu fugiat nulla pariatur.", body: "Excepteur sint"),
        ExampleModel(title: "occaecat cupidatat", body: "non proident,")
    ]
    
    static let dataSet2 = [
        ExampleModel(title: "Lorem ipsum", body: "dolor sit amet, consectetur adipiscing elit,"),
        ExampleModel(title: "sed do eiusmod", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        ExampleModel(title: "Duis aute", body: "irure dolor in reprehenderit "),
        ExampleModel(title: "in voluptate", body: nil),
        ExampleModel(title: "velit esse cillum dolore eu fugiat nulla pariatur.", body: "Excepteur sint"),
        ExampleModel(title: "occaecat cupidatat", body: "non proident,")
    ]
    
    static let dataSet3 = [
        ExampleModel(title: "Lorem ipsum", body: nil),
        ExampleModel(title: "sed do eiusmod", body: nil),
        ExampleModel(title: "Duis aute", body: nil),
        ExampleModel(title: "in voluptate", body: nil),
        ExampleModel(title: "velit esse cillum dolore eu fugiat nulla pariatur.", body: nil),
        ExampleModel(title: "occaecat cupidatat", body: nil)
    ]
    
}
