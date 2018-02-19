//
//  ExampleCell.swift
//  DynamicHorizontalScrollingShelves
//
//  Created by Charles Chandler on 2/19/18.
//  Copyright © 2018 Charles Chandler. All rights reserved.
//

import UIKit

final class ExampleCell: UICollectionViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var body: UILabel!
    
    public func configure(with viewModel: ExampleViewModel) {
        title.text = viewModel.title
        body.text = viewModel.body
        
        layer.cornerRadius = 2.0
    }
    
}
