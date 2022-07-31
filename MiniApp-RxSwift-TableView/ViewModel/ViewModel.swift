//
//  ViewModel.swift
//  MiniApp-RxSwift-TableView
//
//  Created by 近藤米功 on 2022/07/31.
//

import Foundation
import RxSwift
import RxRelay

final class SampleViewModel{
    private var sampleModel = Sample.createModel()

    var rxModel = BehaviorRelay<[Sample]>(value: [])

    init(){
        rxModel.accept(sampleModel)
    }
}
