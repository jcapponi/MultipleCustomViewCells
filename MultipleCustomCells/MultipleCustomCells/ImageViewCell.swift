//
//  ImageViewCell.swift
//  MultipleCustomCells
//
//  Created by Juan Capponi on 12/18/20.
//

import UIKit

class ImageViewCell: UITableViewCell {

    @IBOutlet var myImageView : UIImageView!
    
    static let identifier = "ImageViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ImageViewCell", bundle: nil)
    }
    
    public func configure(with imageName: String) {
        myImageView.image = UIImage(named: imageName)
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
