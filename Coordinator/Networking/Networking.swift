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
    case categories
    case categoriesDetails
}

extension Requests: TargetType {
    public var baseURL: URL {
        return URL(string: "")!
    }
    
    public var path: String {
        switch self {
        case .categories:
            return "/api1"
        case .categoriesDetails:
            return "/api2"
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
