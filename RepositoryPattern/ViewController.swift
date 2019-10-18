//
//  ViewController.swift
//  RepositoryPattern
//
//  Created by Cahyanto Setya Budi on 18/10/19.
//  Copyright © 2019 ChatAja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let dataManager = DataManager()
        
        //Get your damn todos today
        dataManager.getTodos()
        
        //Do you know what's next? Get your todo now
        dataManager.getTodo(id: 2)
        
        //Are you bored? Wanna try something new today? Add your todo please
        dataManager.addTodo(todo: Todo(id: -1, title: "Nonton Game of Throne :)", isCompleted: false))
    }


}

