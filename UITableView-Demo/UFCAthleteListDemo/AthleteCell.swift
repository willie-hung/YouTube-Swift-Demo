//
//  AthleteCell.swift
//  UFCAthleteListDemo
//
//  Created by 洪崧傑 on 2023/4/7.
//

import UIKit

class AthleteCell: UITableViewCell {
    
    @IBOutlet weak var athleteImageView: UIImageView!
    
    @IBOutlet weak var athleteNameLabel: UILabel!
    
    @IBOutlet weak var athleteDescriptionLabel: UILabel!
    
    // Set each athlete value
    
    var athlete: Athlete? {
        didSet {
            self.athleteNameLabel.text = athlete?.name
            self.athleteDescriptionLabel.text = athlete?.description
            self.athleteImageView.image = UIImage(named: athlete?.image ?? "")
            
            // Set favorite image
            // If favorite then heart, otherwise no image
            self.accessoryView = athlete?.favorite ?? false ? UIImageView(image: UIImage(systemName: "heart.fill")) : .none
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
