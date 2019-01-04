//
//  Navigator.swift
//  Coordinator
//
//  Created by João Mendes | Stone on 03/01/19.
//  Copyright © 2019 João Mendes | Stone. All rights reserved.
//

import Foundation

protocol Navigator {
    associatedtype Destination
    
    func navigate(to destination: Destination)
}
