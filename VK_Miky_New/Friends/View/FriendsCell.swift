//
//  FriendsTableViewCell.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendImage.layer.cornerRadius = friendImage.bounds.width / 2
        friendImage.layer.shadowColor = UIColor.black.cgColor
        friendImage.layer.shadowRadius = 8
        friendImage.layer.shadowOffset = .zero
        friendImage.layer.shadowOpacity = 0.5
        friendImage.layer.backgroundColor = UIColor.lightGray.cgColor
        friendImage.clipsToBounds = true
        friendImage.layer.masksToBounds = false
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
