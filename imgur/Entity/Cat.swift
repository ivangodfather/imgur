//
//  Cat.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation

class Cat {
    
    let imageURL: URL
    let title: String
    
    init?(dict: [String: Any]) {
        guard let title = dict[Keys.title] as? String,
              let imgURLString = dict[Keys.image] as? String,
              let imageURL = URL(string: imgURLString) else {
            return nil
        }
        self.imageURL = imageURL
        self.title = title
    }
}

extension Cat {
    struct Keys {
        static let image = "image"
        static let title = "title"
    }
}
