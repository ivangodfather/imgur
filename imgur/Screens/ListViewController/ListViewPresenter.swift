//
//  ListViewPresenter.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation

protocol ListViewPresenterProtocol: BasePresenterProtocol {
}


final class ListViewPresenter: BasePresenter, ListViewPresenterProtocol {
    
    let getCats: GetCatsUseCaseProtocol
    let listView: ListViewProtocol
    
    init(listView: ListViewProtocol,
         getCats: GetCatsUseCaseProtocol = GetCatsUseCase()) {
        self.getCats = getCats
        self.listView = listView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCats.execute().subscribe(onNext: { cats in
            self.listView.showCats(cats: cats)
        }, onError: { error in
        
        }).disposed(by: disposeBag)
        listView.setTopTitle("Cats")
    }
}
