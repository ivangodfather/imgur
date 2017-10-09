//
//  RootWireframe.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit

final class RootWireframe {
    
    private let window: UIWindow
    private let listWireframe: ListWireframeProtocol
    
    init(window: UIWindow,
         listWireframe: ListWireframeProtocol = ListWireframe()) {
        self.window = window
        self.listWireframe = listWireframe
    }
    
    func showFirstViewController() {
        window.rootViewController = UINavigationController(rootViewController: listWireframe.listVC())
    }
}
