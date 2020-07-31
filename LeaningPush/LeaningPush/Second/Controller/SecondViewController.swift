//
//  SecondViewController.swift
//  LeaningPush
//
//  Created by haruka on 2020/07/31.
//  Copyright © 2020 DEAUX. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class SecondViewController: BaseViewController {
    @IBOutlet weak var secondHeaderView: HeaderView!
}

// MARK: - Life cycle
extension SecondViewController {
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        setHeaderDesign()
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
        secondHeaderView.delegate = self
    }
    func setHeaderDesign() {
        secondHeaderView.setCenter(text: "SecondView")
        secondHeaderView.setLeft(text: "")
    }
}
