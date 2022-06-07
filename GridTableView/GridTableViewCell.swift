//
//  GridTableViewCell.swift
//  GridTableView
//
//  Created by Michael Miles on 6/7/22.
//

import UIKit

class GridTableViewCell: UITableViewCell {
    @IBOutlet weak var leadingMarginWidth: NSLayoutConstraint!
    
    weak var delegate: GridTVCDelegate? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func gridButtonPressed(_ sender: GridButton) {
        sender.dateSelected = !sender.dateSelected
        delegate?.buttonPressed(tag: sender.tag)
    }
}

protocol GridTVCDelegate: AnyObject {
    func buttonPressed(tag: Int)
}
