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

class ListWireframe: ListWireframeProtocol {
    
    struct Identifiers {
        static let list = "List"
    }
    
    private lazy var stortyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
    
    func listVC() -> UIViewController {
        return stortyBoard.instantiateViewController(withIdentifier: Identifiers.list)
    }
}
