//
//  ThirdViewController.swift
//  LearningGit
//
//  Created by haruka on 2020/08/03.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class ThirdViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
}

// MARK: - Life cycle
extension ThirdViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension ThirdViewController: HeaderViewDelegate {
    func touchedLeftButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
}

// MARK: - method
extension ThirdViewController {
    func setDelegate() {
        headerView.delegate = self
    }
    func setHeaderView() {
        headerView.setLeft(text: "Back")
        headerView.setRight(text: "次へ")
        headerView.setCenter(text: "ThirdView")
    }
}
