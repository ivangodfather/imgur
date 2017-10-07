//
//  GetCats.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation
import RxSwift

protocol GetCatsUseCaseProtocol {
    func execute() -> Observable<[Cat]>
}

final class GetCatsUseCase: GetCatsUseCaseProtocol {
    
    let catRepository: CatRepositoryProtocol
    
    init(catRepository: CatRepositoryProtocol = CatRepository()) {
        self.catRepository = catRepository
    }
    
    func execute() -> Observable<[Cat]> {
        return catRepository.cats()
    }
}
