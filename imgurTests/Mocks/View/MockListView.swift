//
//  ListView.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 09/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

@testable import imgur

class MockListView: ListViewProtocol {
    
    var cats: [Cat] = []
    func showCats(cats: [Cat]) {
        self.cats = cats
    }
    
    var title = ""
    func setTopTitle(_ title: String) {
        self.title = title
    }
}
