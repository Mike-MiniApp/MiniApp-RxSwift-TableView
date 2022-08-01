//
//  TableViewCell.swift
//  MiniApp-RxSwift-TableView
//
//  Created by 近藤米功 on 2022/07/31.
//

import UIKit

class TableViewCell: UITableViewCell {

    static var identifier = "custumCell"
    @IBOutlet weak var nameLabel: UILabel!

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

}
