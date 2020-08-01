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
    @IBOutlet weak var secondHeader: HeaderView!
}

// MARK: - Life cycle
extension SecondViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeader()
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
}

// MARK: - method
extension SecondViewController {
    func setDelegate() {
        secondHeader.delegate = self
    }
    func setHeader() {
        secondHeader.setCenter(text: "Title")
        secondHeader.setLeft(text: "")
    }
}
