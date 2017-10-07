//
//  BaseViewController.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var presenter: BasePresenterProtocol!
    var viewController: UIViewController!
    
    init(nibName: String) {
        super.init(nibName: nibName, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not allowed")
    }
}
