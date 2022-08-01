//
//  ViewController.swift
//  MiniApp-RxSwift-TableView
//
//  Created by 近藤米功 on 2022/07/31.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController{

    private var sampleViewModel = SampleViewModel()
    private var disposeBag = DisposeBag()

    // dataSourceを使う方法
    var dataSource = MyDataSource()

    @IBOutlet weak var rxTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupBindings()
    }

    private func setupBindings(){
        // dataSourceを使わない方法
//        sampleViewModel.rxModel.bind(to: rxTableView.rx.items(cellIdentifier: "custumCell", cellType: TableViewCell.self)) { row, element, cell in
//            cell.configure(model: element)
//        }.disposed(by: disposeBag)

        // dataSourceを使う方法
        let dataSource = MyDataSource()
        sampleViewModel.rxModel.bind(to: rxTableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }

    private func setupTableView(){
        rxTableView.rowHeight = 200
        rxTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
    }
}

