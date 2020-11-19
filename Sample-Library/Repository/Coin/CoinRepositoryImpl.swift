//
//  CoinRepositoryImpl.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Foundation

class CoinRepositoryImpl: CoinRepository {
    
    let coinDataSource = CoinDataSource()
    
    func getCurrentPrice() -> CoinPriceEntity {
        return coinDataSource.getCurrentPrice()
    }
}
