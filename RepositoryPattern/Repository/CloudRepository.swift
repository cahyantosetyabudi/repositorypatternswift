//
//  CloudRepository.swift
//  RepositoryPattern
//
//  Created by Cahyanto Setya Budi on 18/10/19.
//  Copyright © 2019 ChatAja. All rights reserved.
//

import Foundation

class CloudRepository: Repository {
    private var todos: [Todo] = []
    
    init() {
        todos.append(Todo(id: 1, title: "Kerja donk boy!", isCompleted: false))
        todos.append(Todo(id: 2, title: "Mandi biar ganteng", isCompleted: false))
        todos.append(Todo(id: 3, title: "Main Dota, work hard play hard!", isCompleted: false))
    }
    
    func getTodos() -> [Todo] {
        return todos
    }
    
    func getTodo(id: Int) -> Todo {
        return todos.first(where: { $0.id == id })!
    }
    
    func addTodo(todo: Todo) -> Todo {
        todo.id = todos.count + 1
        todos.append(todo)
        return todo
    }
    
    func updateTodo(todo: Todo) -> Todo {
        print("Update to do bosque")
        let todoTobeUpdated = todos.first(where: { $0.tempId == todo.tempId })
        todoTobeUpdated?.id = todo.id
        todoTobeUpdated?.isCompleted = todo.isCompleted
        return todoTobeUpdated!
    }
}
