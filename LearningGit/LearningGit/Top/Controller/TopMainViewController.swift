//
//  TopMainViewController.swift
//  LearningGit
//
//  Created by むむ on 2020/08/01.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class TopMainViewController: BaseViewController {
    
    
    @IBOutlet weak var headerView: HeaderView!
    
    
    @IBOutlet weak var homeMainView: TopMainView!
    
}

// MARK: - Life cycle
extension TopMainViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderViewRight()
        setHeaderViewLeft()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopMainViewController {
    func touchedRightButton(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}

// MARK: - method
extension TopMainViewController: HeaderViewDelegate {
    func setDelegate() {
        headerView.delegate = self
    }
    func setHeaderViewRight() {
        headerView.setRight(text: "投稿")
    }
    func setHeaderViewLeft() {
        headerView.setLeft(text: "")
    }
}
