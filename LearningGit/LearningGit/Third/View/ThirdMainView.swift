//
//  ThirdMainView.swift
//  LearningGit
//
//  Created by haruka on 2020/08/03.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol ThirdMainViewDelegate: NSObjectProtocol{
}

extension ThirdMainViewDelegate {
}

// MARK: - Property
class ThirdMainView: BaseView {
    @IBOutlet weak var thirdCollectionView: UICollectionView!
    weak var delegate: ThirdMainViewDelegate? = nil
}

// MARK: - Life cycle
extension ThirdMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        thirdCollectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: thirdCollectionView, cellName: ThirdCollectionViewCell.className)
    }
}

// MARK: - Protocol
extension ThirdMainView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = thirdCollectionView.dequeueReusableCell(withReuseIdentifier: ThirdCollectionViewCell.className, for: indexPath) as? ThirdCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
}

// MARK: - method
extension ThirdMainView {
}
