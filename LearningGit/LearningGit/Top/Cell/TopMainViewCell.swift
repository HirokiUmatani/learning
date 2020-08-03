//
//  TopMainViewCell.swift
//  LearningGit
//
//  Created by むむ on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewCellDelegate: NSObjectProtocol{
}

extension TopMainViewCellDelegate {
}

// MARK: - Property
class TopMainViewCell: BaseTableViewCell {
    weak var delegate: TopMainViewCellDelegate? = nil
    
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
}

// MARK: - Life cycle
extension TopMainViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension TopMainViewCell {
}

// MARK: - method
extension TopMainViewCell {
    func updateCell(name: String) {
        nameLabel.text = name
    }
}
