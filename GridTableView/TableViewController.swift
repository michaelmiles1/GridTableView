//
//  TableViewController.swift
//  GridTableView
//
//  Created by Michael Miles on 6/3/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    private static let LEFT_MARGIN_WIDTH: CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GridTVC", for: indexPath) as! GridTableViewCell
        cell.leadingMarginWidth.constant = TableViewController.LEFT_MARGIN_WIDTH
        cell.delegate = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UINib(nibName: "WeekDayHeaderView", bundle: nil).instantiate(withOwner: nil)[0] as? WeekDayHeaderView
        view?.leadingMarginConstraint.constant = TableViewController.LEFT_MARGIN_WIDTH
        return view
    }

}

extension TableViewController: GridTVCDelegate {
    func buttonPressed(tag: Int) {
        print("BUTTON PRESSED WITH TAG \(tag)")
    }
}
