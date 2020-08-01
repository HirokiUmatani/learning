//
//  TopViewController.swift
//  LearningGitTwo
//
//  Created by むむ on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class TopViewController: BaseViewController {
    
    
    @IBOutlet weak var headerView: HeaderView!
    
    
    @IBOutlet weak var homeView: TopMainView!
    
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderViewOne()
        setHeaderViewOneTwo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopViewController {
    func touchedRightButton(_ sender: UIButton) {
//        画面遷移
    }
}

// MARK: - method
extension TopViewController: HeaderViewDelegate {
    func setDelegate() {
        headerView.delegate = self
    }
    func setHeaderViewOne() {
        headerView.setRight(text: "投稿")
    }
    func setHeaderViewOneTwo() {
    headerView.setLeft(text: "")
    }
    
}
