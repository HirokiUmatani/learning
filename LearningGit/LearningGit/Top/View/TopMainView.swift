//
//  TopMainView.swift
//  LearningGit
//
//  Created by むむ on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewDelegate: NSObjectProtocol{
}

extension TopMainViewDelegate {
}

// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    
    
    @IBOutlet weak var mainTableView: UITableView!
    
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        mainTableView.dataSource = self
        loadTableViewCellFromXib(tableView: mainTableView, cellName: TopMainViewCell.className)
    }
}

// MARK: - Protocol
extension TopMainView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = mainTableView.dequeueReusableCell(withIdentifier: TopMainViewCell.className, for: indexPath) as? TopMainViewCell else { return UITableViewCell() }
        cell.updateCell(name: "a")
        return cell
    }
    
    
}

// MARK: - method
extension TopMainView {
}
