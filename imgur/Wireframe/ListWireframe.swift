//
//  ListWireframe.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit

protocol ListWireframeProtocol {
    func listVC() -> UIViewController
}

final class ListWireframe: ListWireframeProtocol {
    
    func listVC() -> UIViewController {
        let listVC = ListViewController()
        listVC.presenter = ListViewPresenter(listView: listVC)
        return listVC
    }
}
