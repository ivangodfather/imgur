//
//  BaseViewController.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    let presenter: BasePresenterProtocol
    
    init(nibName: String,
         presenter: BasePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nibName, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not allowed")
    }
}
