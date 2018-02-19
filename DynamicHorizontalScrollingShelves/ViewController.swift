//
//  ViewController.swift
//  DynamicHorizontalScrollingShelves
//
//  Created by Charles Chandler on 2/19/18.
//  Copyright © 2018 Charles Chandler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var flowLayout: UICollectionViewFlowLayout!
    @IBOutlet var collectionViewHeightConstraint: NSLayoutConstraint!
    
    private var data: [ExampleModel] = ExampleData.dataSet1
    
    private enum Segment: Int {
        case dataSet1 = 0, dataSet2, dataSet3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectioView()
    }
    
    private func setupCollectioView() {
        let nib = UINib(nibName: "ExampleCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ExampleCell")
        
        let edgeInsets = UIEdgeInsets(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0)
        flowLayout.sectionInset = edgeInsets
        
        let height = Constants.maximumCardHeight - edgeInsets.top - edgeInsets.bottom
        flowLayout.itemSize = CGSize(width: Constants.cardWidth, height: height)
        
        setCollectionViewHeight(Constants.maximumCardHeight, with: flowLayout.sectionInset)
    }
    
    private func setCollectionViewHeight(_ value: CGFloat, with edgeInsets: UIEdgeInsets) {
        collectionViewHeightConstraint.constant = Constants.maximumCardHeight + edgeInsets.top + edgeInsets.bottom
    }
    
    // MARK: - UICollectionViewDatasource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExampleCell", for: indexPath) as! ExampleCell
        let example = data[indexPath.item]
        let viewModel = ExampleViewModel(example: example)
        
        cell.configure(with: viewModel)
        
        return cell
    }
    
    // MARK: - Segmented Control

    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        guard let segment = Segment(rawValue: sender.selectedSegmentIndex) else {
            fatalError("Invalid value returned from segmented control")
        }
        
        switch segment {
        case .dataSet1:
            data = ExampleData.dataSet1
        case .dataSet2:
            data = ExampleData.dataSet2
        case .dataSet3:
            data = ExampleData.dataSet3
        }
        
        collectionView.reloadData()
        setCollectionViewHeight(Constants.maximumCardHeight, with: flowLayout.sectionInset)
    }
    
}

