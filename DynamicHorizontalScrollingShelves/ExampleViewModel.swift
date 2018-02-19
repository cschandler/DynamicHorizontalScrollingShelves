//
//  ExampleViewModel.swift
//  DynamicHorizontalScrollingShelves
//
//  Created by Charles Chandler on 2/19/18.
//  Copyright © 2018 Charles Chandler. All rights reserved.
//

import Foundation

struct ExampleViewModel {
    
    let title: String
    let body: String?
    
    init(example: ExampleModel) {
        title = example.title
        body = example.body
    }
    
}
