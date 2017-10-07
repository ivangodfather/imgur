//
//  ListViewController.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit

protocol ListViewProtocol {
    
}

final class ListViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init() {
        super.init(nibName: String(describing: ListViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) not supported") }
}

extension ListViewController: ListViewProtocol {
    
}
