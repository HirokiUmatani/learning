//
//  ThirdCollectionViewCell.swift
//  LearningGit
//
//  Created by haruka on 2020/08/03.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol ThirdCollectionViewCellDelegate: NSObjectProtocol{
}

extension ThirdCollectionViewCellDelegate {
}

// MARK: - Property
class ThirdCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: ThirdCollectionViewCellDelegate? = nil
}

// MARK: - Life cycle
extension ThirdCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension ThirdCollectionViewCell {
}

// MARK: - method
extension ThirdCollectionViewCell {
}
