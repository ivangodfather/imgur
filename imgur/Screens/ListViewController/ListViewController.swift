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
    func showCats(cats: [Cat])
    func setTopTitle(_ title: String)
}

final class ListViewController: BaseViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    private var disposeBag = DisposeBag()
    
    fileprivate var cats = Variable([Cat]())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let nibName = String(describing: ListCollectionViewCell.self)
        let cellNib = UINib(nibName: nibName, bundle: Bundle.main)
        collectionView.delegate = self
        collectionView.register(cellNib, forCellWithReuseIdentifier: nibName)
        cats.asObservable().bind(to: collectionView.rx.items(cellIdentifier: nibName, cellType: ListCollectionViewCell.self)) { row, cat, cell in
            cell.setup(cat)
        }.disposed(by: disposeBag)
    }
    
    init() {
        super.init(nibName: String(describing: ListViewController.self))
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) not supported") }
}

extension ListViewController: ListViewProtocol {
    func setTopTitle(_ title: String) {
        self.title = title
    }

    func showCats(cats: [Cat]) {
        self.cats.value = cats
    }
}

extension ListViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / 2.2
        return CGSize(width: width, height: width * 1.4)
    }
}
