//
//  GridTableViewCell.swift
//  GridTableView
//
//  Created by Michael Miles on 6/7/22.
//

import UIKit

class GridTableViewCell: UITableViewCell {
    @IBOutlet weak var leadingMarginWidth: NSLayoutConstraint!
    @IBOutlet weak var timeLabel: UILabel!
    
    weak var delegate: GridTVCDelegate? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        clipsToBounds = false
        contentView.clipsToBounds = false
    }

    @IBAction func gridButtonPressed(_ sender: GridButton) {
        sender.dateSelected = !sender.dateSelected
        delegate?.buttonPressed(tag: sender.tag)
    }
}

protocol GridTVCDelegate: AnyObject {
    func buttonPressed(tag: Int)
}
