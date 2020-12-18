//
//  TotoYoViewCell.swift
//  MultipleCustomCells
//
//  Created by Juan Capponi on 12/18/20.
//

import UIKit

class TotoYoViewCell: UITableViewCell {

    @IBOutlet var ourImage: UIImageView!
    @IBOutlet var ourLabek: UILabel!
    
    let identifier = "TotoYoViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TotoYoViewCell", bundle: nil)
    }
    
    
    public func configure(with imageName: String) {
        ourImage.image = UIImage(named: imageName)
        ourImage.contentMode = .scaleAspectFit
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
