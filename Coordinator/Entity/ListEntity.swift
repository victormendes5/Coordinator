//
//  ListEntity.swift
//  Coordinator
//
//  Created by Victor Mendes on 27/12/18.
//  Copyright © 2018 João Mendes | Stone. All rights reserved.
//

import Foundation

public struct ListEntity: Decodable {
    public let name: String
    public let links: [LinkListEntity]
}
