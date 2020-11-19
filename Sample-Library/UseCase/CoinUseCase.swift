//
//  CoinUseCase.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Foundation

open class CoinUseCase: CoinRepository {
    
    let coinRepository = CoinRepositoryImpl()
    
    public func getCurrentPrice() -> CoinPriceEntity {
        return coinRepository.getCurrentPrice()
    }
}
