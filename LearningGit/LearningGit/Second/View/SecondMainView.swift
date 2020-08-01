//
//  SecondMainView.swift
//  LearningGit
//
//  Created by haruka on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol SecondMainViewDelegate: NSObjectProtocol{
}

extension SecondMainViewDelegate {
}

// MARK: - Property
class SecondMainView: BaseView {
    weak var delegate: SecondMainViewDelegate? = nil
}

// MARK: - Life cycle
extension SecondMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension SecondMainView {
}

// MARK: - method
extension SecondMainView {
}
