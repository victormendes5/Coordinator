//
//  Networking.swift
//  Coordinator
//
//  Created by João Mendes | Stone on 21/12/18.
//  Copyright © 2018 João Mendes | Stone. All rights reserved.
//

import Foundation
import Moya

public enum Requests {
    case first
    case second
    case third
    case list
}

extension Requests: TargetType {
    public var baseURL: URL {
        return URL(string: "https://private-4ab845-test11663.apiary-mock.com")!
    }
    
    public var path: String {
        switch self {
        case .first:
            return "/personFirst"
        case .second:
            return "/personSecond"
        case .third:
            return "/personThird"
        case .list:
            return "/list"
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        return .requestPlain
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
}
