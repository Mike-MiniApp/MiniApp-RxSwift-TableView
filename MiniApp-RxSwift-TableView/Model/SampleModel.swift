//
//  SampleModel.swift
//  MiniApp-RxSwift-TableView
//
//  Created by 近藤米功 on 2022/07/31.
//

import Foundation

struct Sample{
    var name: String?

    static func createModel() -> [Sample]{
       return [
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample")
       ]
    }
}
