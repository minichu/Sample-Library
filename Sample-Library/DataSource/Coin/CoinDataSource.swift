//
//  CoinDataSource.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Moya
import ObjectMapper

class CoinDataSource: CoinRepository {
    
//    fileprivate let provider = MoyaProvider<CoinApiService>()
    func getCurrentPrice() -> CoinPriceEntity {
        //will be die
        return NSObject() as! CoinPriceEntity
    }
    
}
