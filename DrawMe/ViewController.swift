//
//  ViewController.swift
//  DrawMe
//
//  Created by Muhammad Abdul Subhan on 30/10/2017.
//  Copyright © 2017 Muhammad Abdul Subhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var drawView: MSDrawView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var clearButton: UIButton!

    let colors = [Constants.MSColors.oneColor, Constants.MSColors.twoColor, Constants.MSColors.threeColor, Constants.MSColors.fourColor, Constants.MSColors.fiveColor, Constants.MSColors.sixColor, Constants.MSColors.sevenColor, Constants.MSColors.eightColor, Constants.MSColors.nineColor]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MSColorPickerCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self;
        collectionView.dataSource = self;
    }

    
    @IBAction func didTapClearButton(_ sender: Any) {
        drawView.clear()
    }
    
    //MARK:- Collection View Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:MSColorPickerCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MSColorPickerCollectionViewCell
        
        cell.color = colors[indexPath.row]
        
        cell.layoutIfNeeded()

        return cell;
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.drawView.strokeColor = colors[indexPath.row].cgColor
    }
}

