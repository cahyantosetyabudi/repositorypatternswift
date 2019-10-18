//
//  Repository.swift
//  RepositoryPattern
//
//  Created by Cahyanto Setya Budi on 18/10/19.
//  Copyright © 2019 ChatAja. All rights reserved.
//

import Foundation

protocol Repository {
    func getTodos() -> [Todo]
    func getTodo(id: Int) -> Todo
    func addTodo(todo: Todo) -> Todo
    func updateTodo(todo: Todo) -> Todo
}
