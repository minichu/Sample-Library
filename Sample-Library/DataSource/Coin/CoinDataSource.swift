//
//  CoinDataSource.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Moya
import ObjectMapper
import RxSwift

class CoinDataSource: CoinRepository {
    
    fileprivate let provider = MoyaProvider<CoinApiService>()
    func getCurrentPrice() -> CoinPriceEntity? {
        
        print("1")
        var coinPriceEntity: CoinPriceEntity?
        provider.rx.request(.getCurrentPrice)
            .asObservable()
            .filterSuccessfulStatusCodes()
            .mapJSON()
            .do(onNext:{ json in print(json)})
        
        //will be
        return coinPriceEntity
    }
    
}
