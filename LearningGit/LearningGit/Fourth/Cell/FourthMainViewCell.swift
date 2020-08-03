//
//  FourthMainViewCell.swift
//  LearningGit
//
//  Created by むむ on 2020/08/03.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol FourthMainViewCellDelegate: NSObjectProtocol{
}

extension FourthMainViewCellDelegate {
}

// MARK: - Property
class FourthMainViewCell: BaseCollectionViewCell {
    
    weak var delegate: FourthMainViewCellDelegate? = nil
    
}

// MARK: - Life cycle
extension FourthMainViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension FourthMainViewCell {
}

// MARK: - method
extension FourthMainViewCell {
}
