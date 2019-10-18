//
//  DataManager.swift
//  RepositoryPattern
//
//  Created by Cahyanto Setya Budi on 18/10/19.
//  Copyright © 2019 ChatAja. All rights reserved.
//

import Foundation

class DataManager {
    var cacheRepository: Repository&CachedData
    let cloudRepository: Repository
    
    init() {
        self.cacheRepository = CacheRepository()
        self.cloudRepository = CloudRepository()
    }
    
    func refreshTodos() -> [Todo] {
        cacheRepository.todosInCache.removeAll()
        cacheRepository.todosInCache = cloudRepository.getTodos()
        return cacheRepository.todosInCache
    }
    
    func getTodos() -> [Todo] {
        if cacheRepository.todosInCache.isEmpty {
            print("Request to cloud bosque")
            cacheRepository.todosInCache = cloudRepository.getTodos()
        }
        
        print("Todos is come from cache")
        return cacheRepository.todosInCache
    }
    
    func addTodo(todo: Todo) {
        cacheRepository.addTodo(todo: todo)
        cloudRepository.addTodo(todo: todo)
    }
    
    func getTodo(id: Int) -> Todo {
        let item = cacheRepository.getTodo(id: id)
        return item
    }
    
    func updateTodo(todo: Todo) {
        cacheRepository.updateTodo(todo: todo)
        cloudRepository.updateTodo(todo: todo)
    }
}
