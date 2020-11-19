//
//  CoinApiService.swift
//  Sample-Library
//
//  Created by hyeondo on 2020/11/20.
//

import Moya

enum CoinApiService{
    case getCurrentPrice
}

extension CoinApiService: TargetType{
    
    var baseURL: URL{
        return URL(string: API.BASE_API)!
    }
    
    var path: String {
        switch self {
        case .getCurrentPrice:
            return API.CURRENT_PRICE
        }
    }
    
    var method: Moya.Method{
        switch self {
        case .getCurrentPrice:
            return .get
        }
    }
    
    //"{\"item\":\"item\",\"item\":\"item\",\"item\":\"item\",\"item\":\"item\"}"
    var sampleData: Data {
        return "}".data(using: String.Encoding.utf8)!
    }
    
    var task: Task {
        switch self {
        case .getCurrentPrice:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .getCurrentPrice:
            return nil
        }
    }
}
