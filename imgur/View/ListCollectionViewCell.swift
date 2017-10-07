//
//  ListCollectionViewCell.swift
//  imgur
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import UIKit
import Kingfisher

final class ListCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var listImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ cat: Cat) {
        listImageView.kf.setImage(with: cat.imageURL)
        titleLabel.text = cat.title
    }

}
