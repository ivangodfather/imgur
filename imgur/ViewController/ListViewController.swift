//
//  ListViewController.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit

protocol ListViewProtocol {
    
}

final class ListViewController: BaseViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupCollectionView() {
        let cellNib = UINib(nibName: String(describing: ListCollectionViewCell.self), bundle: Bundle.main)
        collectionView.register(cellNib, forCellWithReuseIdentifier: String(describing: ListCollectionViewCell.self))
        
        /*
 
         private func setupTableView() {
         let nib = UINib(nibName: TWListTableViewCell.cellId, bundle: Bundle.main)
         listTableView.register(nib, forCellReuseIdentifier: TWListTableViewCell.cellId)
         
         itemsList
         .asObservable()
         .bindTo(listTableView
         .rx
         .items(cellIdentifier: TWListTableViewCell.cellId,
         cellType: TWListTableViewCell.self)) { row, itemList, cell in
         cell.configure(itemList)
         }.addDisposableTo(disposeBag)
         listTableView
         .rx
         .modelSelected(ItemList.self)
         .subscribe(onNext: { itemList in
         self.presenter.didTap(itemList: itemList)
         }).addDisposableTo(disposeBag)
         searchTextField.delegate = self
         }

 */
    }
    
    init() {
        super.init(nibName: String(describing: ListViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) not supported") }
}

extension ListViewController: ListViewProtocol {
    
}
