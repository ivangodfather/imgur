//
//  MockListWireframe.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

@testable import imgur
import UIKit

class MockListWireframe: ListWireframeProtocol {
    
    private var listVCToReturn = UIViewController()
    
    func listVC() -> UIViewController {
        return listVCToReturn
    }

}
