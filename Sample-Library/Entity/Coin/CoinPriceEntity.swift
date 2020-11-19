//
//  CoinPriceEntity.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Foundation
import ObjectMapper

open class CoinPriceEntity: Mappable {
    var disclaimer: String?
    var chartName: String?

    required public init?(map: Map) {

    }

    public func mapping(map: Map) {
        disclaimer    <- map["disclaimer"]
        chartName     <- map["chartName"]
    }
}


/**
 
 https://api.coindesk.com/v1/bpi/currentprice.json
 
 
 {
 "time": {
 "updated": "Nov 19, 2020 15:08:00 UTC",
 "updatedISO": "2020-11-19T15:08:00+00:00",
 "updateduk": "Nov 19, 2020 at 15:08 GMT"
 },
 "disclaimer": "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org",
 "chartName": "Bitcoin",
 "bpi": {
 "USD": {
 "code": "USD",
 "symbol": "&#36;",
 "rate": "18,103.6379",
 "description": "United States Dollar",
 "rate_float": 18103.6379
 },
 "GBP": {
 "code": "GBP",
 "symbol": "&pound;",
 "rate": "13,693.0667",
 "description": "British Pound Sterling",
 "rate_float": 13693.0667
 },
 "EUR": {
 "code": "EUR",
 "symbol": "&euro;",
 "rate": "15,301.5931",
 "description": "Euro",
 "rate_float": 15301.5931
 }
 }
 }
 */
