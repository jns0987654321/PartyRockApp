//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Junior Samaroo on 2017-02-25.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        // Background async thread (so main UI thread would not be paused)
        // can only do actions, need to update main thread yourself
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                let data = try Data(contentsOf: url)
                
                // after downloading image, place it on main UI thread to update UI
                DispatchQueue.main.async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
                
            } catch {
                //handle the error
            }
        }
        
    }

}
