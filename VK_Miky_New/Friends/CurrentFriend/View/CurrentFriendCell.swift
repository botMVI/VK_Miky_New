//
//  CurrentFriendCell.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class CurrentFriendCell: UICollectionViewCell {
    
    @IBOutlet weak var currentFriendImage: UIImageView!
//    @IBOutlet weak var currentFriendName: UILabel!
    
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var container: UIView!
    
    override func awakeFromNib() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.numberOfTapsRequired = 2
        container.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_:UITapGestureRecognizer) {
        likeControl.isLike.toggle()
        
        if likeControl.isLike {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
        } else {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart")
        }
    }
}
