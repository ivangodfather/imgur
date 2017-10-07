//
//  ListViewController.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol ListViewProtocol {
    
}

final class ListViewController: BaseViewController {
    
    

    @IBOutlet private weak var collectionView: UICollectionView!
    private var disposeBag = DisposeBag()
    
    var cats = Variable([Cat]())
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupCollectionView() {
        let nibName = String(describing: ListCollectionViewCell.self)
        let cellNib = UINib(nibName: nibName, bundle: Bundle.main)
        collectionView.register(cellNib, forCellWithReuseIdentifier: nibName)
        cats.asObservable().bind(to: collectionView.rx.items(cellIdentifier: nibName, cellType: ListCollectionViewCell.self)) { row, cat, cell in
            cell.setup(cat)
        }.disposed(by: disposeBag)
    }
    
    init(presenter: ListViewPresenterProtocol = ListViewPresenter()) {
        super.init(nibName: String(describing: ListViewController.self), presenter: presenter)
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) not supported") }
}

extension ListViewController: ListViewProtocol {
    
}
