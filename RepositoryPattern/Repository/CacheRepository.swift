//
//  CacheRepository.swift
//  RepositoryPattern
//
//  Created by Cahyanto Setya Budi on 18/10/19.
//  Copyright © 2019 ChatAja. All rights reserved.
//

import Foundation

class CacheRepository: Repository, CachedData {
    var todosInCache: [Todo] = []
    
    func getTodos() -> [Todo] {
        return todosInCache
    }
    
    func getTodo(id: Int) -> Todo {
        return todosInCache.first(where: { $0.id == id })!
    }
    
    func addTodo(todo: Todo) -> Todo {
        todosInCache.append(todo)
        return todo
    }
    
    func updateTodo(todo: Todo) -> Todo {
        let todoTobeUpdated = todosInCache.first(where: { $0.tempId == todo.tempId })
        todoTobeUpdated?.id = todo.id
        todoTobeUpdated?.isCompleted = todo.isCompleted
        return todoTobeUpdated!
    }
}
