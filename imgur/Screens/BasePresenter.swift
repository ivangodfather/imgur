//
//  BasePresenter.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import RxSwift
import UIKit

protocol BasePresenterProtocol {
    func viewDidLoad()
}

class BasePresenter: BasePresenterProtocol {
    var disposeBag = DisposeBag()
    
    func viewDidLoad() {
        
    }
}
