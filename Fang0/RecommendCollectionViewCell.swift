//
//  RecommendCollectionViewCell.swift
//  Fang0
//
//  Created by Chun Tie Lin on 2016/4/10.
//  Copyright © 2016年 TinaTien. All rights reserved.
//

import UIKit
import Haneke

class RecommendCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configCell(article: Article) {
        let imageURLString = article.articleImageURL
        let imageURL = NSURL(string: imageURLString)
        
        nameLabel.text = article.articleContent
        imageView.hnk_setImageFromURL(imageURL!)
    }
}
