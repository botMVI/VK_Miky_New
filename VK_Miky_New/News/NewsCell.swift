//
//  NewsCell.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 06.07.2022.
//

import UIKit

class NewsCell: UITableViewCell {
    
    @IBOutlet weak var newsText: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
