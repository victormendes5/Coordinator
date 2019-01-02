//
//  LinkEntity.swift
//  Coordinator
//
//  Created by Victor Mendes on 27/12/18.
//  Copyright © 2018 João Mendes | Stone. All rights reserved.
//

import Foundation

public struct LinkListEntity: Decodable {
    public let href: String
    public let rel: String
    public let method: String
}
