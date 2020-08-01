//
//  SecondMainViewCell.swift
//  LearningGitTwo
//
//  Created by haruka on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol SecondMainViewCellDelegate: NSObjectProtocol{
}

extension SecondMainViewCellDelegate {
}

// MARK: - Property
class SecondMainViewCell: BaseTableViewCell {
    weak var delegate: SecondMainViewCellDelegate? = nil
}

// MARK: - Life cycle
extension SecondMainViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension SecondMainViewCell {
}

// MARK: - method
extension SecondMainViewCell {
}
