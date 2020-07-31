//
//  TableViewCell.swift
//  LeaningPush
//
//  Created by haruka on 2020/07/31.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol TableViewCellDelegate: NSObjectProtocol{
}

extension TableViewCellDelegate {
}

// MARK: - Property
class TableViewCell: BaseTableViewCell {
    weak var delegate: TableViewCellDelegate? = nil
}

// MARK: - Life cycle
extension TableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension TableViewCell {
}

// MARK: - method
extension TableViewCell {
}
