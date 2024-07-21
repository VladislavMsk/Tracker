//
//  DataStructure.swift
//  Tracker
//
//  Created by Vladislav Tudos on 10.07.2024.
//

import Foundation

struct Tracker{
    let id: UInt32
    let name: String
    let color: String
    let emoji: String
    let timeTable: String //расписание
}

struct TrackerCategory{
    let titleCategory: String
    let arrayTreckerSet: [Tracker]
}

//Стуктура, описывающая выполненные трекеры
struct TrackerRecord{
    let idCompleteTrcker: UInt
    let timeComplete: String
}
