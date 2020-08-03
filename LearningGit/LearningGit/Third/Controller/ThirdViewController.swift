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
    @IBOutlet weak var thirdHeaderVIew: HeaderView!
}

// MARK: - Life cycle
extension ThirdViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderVIew()
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
    func touchedRightButton(_ sender: UIButton) {
        let fourthViewController = FourthViewController()
        navigationController?.pushViewController(fourthViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}

// MARK: - method
extension ThirdViewController {
    func setDelegate() {
        thirdHeaderVIew.delegate = self
    }
    func setHeaderVIew() {
        thirdHeaderVIew.setLeft(text: "Back")
        thirdHeaderVIew.setRight(text: "次へ")
        thirdHeaderVIew.setCenter(text: "ThirdView")
    }
}
