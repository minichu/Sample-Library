//
//  Sample_LibraryTests.swift
//  Sample-LibraryTests
//
//  Created by hyeondo on 2020/11/19.
//

import Moya
import XCTest
import RxSwift
import RxBlocking
import RxTest
@testable import Sample_Library

class Sample_LibraryTests: XCTestCase {

    var coinDataSource: CoinDataSource!
    var provider: MoyaProvider<CoinApiService>!
    
    override func setUp() {
        super.setUp()
        coinDataSource = CoinDataSource()
        provider = MoyaProvider<CoinApiService>()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() throws {
        coinDataSource = CoinDataSource()
        var disposeBag = DisposeBag()
        var coinPriceEntity: CoinPriceEntity?
        try? provider.rx.request(.getCurrentPrice)
            .filterSuccessfulStatusCodes()
            .mapJSON()
            .do(onNext:{ json in print(json)})
            .debug()
            .toBlocking()
            .single()
        type(of: coinPriceEntity)
        
//        XCTAssertEqual(coinPriceEntity.chartName, Equatable)
        
            
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
