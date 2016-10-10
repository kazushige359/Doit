//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by 重信和宏 on 10/10/16.
//  Copyright © 2016 Hiro. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {taskLabel?.text = "‼️\(task.name)"}
        else
        {taskLabel?.text = task.name}
        
        
        
       

        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func completeTapped(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

        
    }
    
    
    
    
}