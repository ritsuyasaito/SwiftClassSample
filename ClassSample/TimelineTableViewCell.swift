//
//  TimelineTableViewCell.swift
//  ClassSample
//
//  Created by 齋藤律哉 on 2020/07/10.
//  Copyright © 2020 ritsuya. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
    
    @IBOutlet var userImageView: UIImageView!
    
    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var postImageView: UIImageView!
    
    @IBOutlet var textView: UITextView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
