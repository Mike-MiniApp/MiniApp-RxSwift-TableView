//
//  MyDataSource.swift
//  MiniApp-RxSwift-TableView
//
//  Created by 近藤米功 on 2022/07/31.
//

import RxSwift
import RxCocoa
import UIKit
final class MyDataSource: NSObject, UITableViewDataSource, RxTableViewDataSourceType{

    typealias Element = [Sample]
    var itemArray: [Sample] = []

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custumCell", for: indexPath) as! TableViewCell
        let element = itemArray[indexPath.row]
        cell.nameLabel.text = element.name
        return cell
    }

    func tableView(_ tableView: UITableView, observedEvent: Event<[Sample]>) {
        Binder(self) { datasource, element in
            datasource.itemArray = element
            tableView.reloadData()
        }
        .on(observedEvent)
    }
}
