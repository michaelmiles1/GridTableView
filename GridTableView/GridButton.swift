//
//  GridButton.swift
//  GridTableView
//
//  Created by Michael Miles on 6/7/22.
//

import UIKit

@IBDesignable
class GridButton: UIButton {
    @IBInspectable
    var dateSelected: Bool = false {
        willSet {
            if newValue == true {
                backgroundColor = .systemPurple
            }
            else {
                backgroundColor = .lightGray
            }
        }
    }
}
