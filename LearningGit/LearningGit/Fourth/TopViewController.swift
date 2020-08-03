//
//  TopViewController.swift
//  LearningGit
//
//  Created by むむ on 2020/08/03.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class TopViewController: BaseViewController {
    

    @IBOutlet weak var fourthHeaderView: HeaderView!
    
}

// MARK: - Life cycle
extension TopViewController {
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
extension TopViewController {
    func touchedLeftButton(_ sender: UIButton) {
    navigationController?.popViewController(animated: true)
    animatorManager.navigationType = .slide_pop
    }
}

// MARK: - method
extension TopViewController: HeaderViewDelegate{
    func setDelegate() {
        fourthHeaderView.delegate = self
    }
    func setHeaderVIew() {
    fourthHeaderView.setLeft(text: "Back")
    }
    
}
