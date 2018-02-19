//
//  DynamicHeightCalculable.swift
//  DynamicHorizontalScrollingShelves
//
//  Created by Charles Chandler on 2/19/18.
//  Copyright © 2018 Charles Chandler. All rights reserved.
//

import UIKit

protocol DynamicHeightCalculable {
    func height(forWidth: CGFloat) -> CGFloat
}

func calculateHeight<T: DynamicHeightCalculable>(with viewModels: [T], forWidth width: CGFloat) -> T? {
    var largestViewModel = viewModels.first
    var largestHeight: CGFloat = 0
    
    for viewModel in viewModels {
        let height = viewModel.height(forWidth: width)
        
        if height > largestHeight {
            largestHeight =  height
            largestViewModel = viewModel
        }
    }
    
    return largestViewModel
}
