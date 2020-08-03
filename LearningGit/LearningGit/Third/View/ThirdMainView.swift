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
    weak var delegate: ThirdMainViewDelegate? = nil
}

// MARK: - Life cycle
extension ThirdMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension ThirdMainView {
}

// MARK: - method
extension ThirdMainView {
}
