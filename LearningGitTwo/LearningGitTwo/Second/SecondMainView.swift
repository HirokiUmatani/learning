//
//  SecondMainView.swift
//  LearningGitTwo
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
    @IBOutlet weak var secondTable: UITableView!
    weak var delegate: SecondMainViewDelegate? = nil
}

// MARK: - Life cycle
extension SecondMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        secondTable.dataSource = self
        loadTableViewCellFromXib(tableView: secondTable, cellName: SecondMainViewCell.className)
    }
}

// MARK: - Protocol
extension SecondMainView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = secondTable.dequeueReusableCell(withIdentifier: SecondMainViewCell.className, for: indexPath) as? SecondMainViewCell else { return UITableViewCell() }
        return cell
    }
    
}

// MARK: - method
extension SecondMainView {
}
