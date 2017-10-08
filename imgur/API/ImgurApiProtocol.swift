//
//  ApiProtocol.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 08/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import RxSwift

protocol ImgurApiProtocol {
    func getTopCats() -> Observable<Any>
}
