//
//  FourthMainView.swift
//  LearningGit
//
//  Created by むむ on 2020/08/03.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol FourthMainViewDelegate: NSObjectProtocol{
}

extension FourthMainViewDelegate {
}

// MARK: - Property
class FourthMainView: BaseView {
    weak var delegate: FourthMainViewDelegate? = nil
    
    
 
    @IBOutlet weak var collectionView: UICollectionView!
    
}

// MARK: - Life cycle
extension FourthMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: FourthMainViewCell.className)
    }
}

// MARK: - Protocol
extension FourthMainView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FourthMainViewCell.className, for: indexPath) as? FourthMainViewCell else { return UICollectionViewCell() }
        return cell
    }
    
    
}

// MARK: - method
extension FourthMainView {
}
