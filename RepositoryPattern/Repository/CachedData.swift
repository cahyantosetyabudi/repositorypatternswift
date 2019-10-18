//
//  CachedData.swift
//  RepositoryPattern
//
//  Created by Cahyanto Setya Budi on 18/10/19.
//  Copyright © 2019 ChatAja. All rights reserved.
//

import Foundation

protocol CachedData {
    var todosInCache: [Todo] { get set }
}
