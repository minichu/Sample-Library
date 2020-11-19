//
//  API.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Foundation

public struct API {
    /**
     예제에서는 아래의 api를 사용합니다.
     Document: https://www.coindesk.com/coindesk-api
     
     웹페이지에서 아래 주소에 접속해보세요.
     https://api.coindesk.com/v1/bpi/currentprice.json
     */
    public static let BASE_API = "https://api.coindesk.com/"
    
    public static let CURRENT_PRICE = "v1/bpi/currentprice.json"
}
