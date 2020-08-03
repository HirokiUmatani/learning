//
//  SecondViewController.swift
//  LearningGit
//
//  Created by haruka on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class SecondViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
}

// MARK: - Life cycle
extension SecondViewController {
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
extension SecondViewController: HeaderViewDelegate {
    func touchedLeftButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    
    func touchedRightButton(_ sender: UIButton) {
        let thirdViewController = ThirdViewController()
        navigationController?.pushViewController(thirdViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}

// MARK: - method
extension SecondViewController {
    func setDelegate() {
        headerView.delegate = self
    }
    func setHeaderView() {
        headerView.setCenter(text: "Title")
        headerView.setLeft(text: "Back")
        headerView.setRight(text: "次へ")
    }
}
