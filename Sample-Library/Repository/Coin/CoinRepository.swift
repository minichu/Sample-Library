//
//  CoinRepository.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Foundation

public protocol CoinRepository {
    func getCurrentPrice() -> CoinPriceEntity?
}
