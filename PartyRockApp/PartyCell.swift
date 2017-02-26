//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Junior Samaroo on 2017-02-25.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
        
    }

}
