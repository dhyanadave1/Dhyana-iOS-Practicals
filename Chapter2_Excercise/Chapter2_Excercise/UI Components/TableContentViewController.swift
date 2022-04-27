//
//  TableContentViewController.swift
//  Chapter2_Excercise
//
//  Created by Dhyana Dave on 29/04/22.
//

import UIKit

class TableContentViewController: UIViewController {
    // Mark outlets
    
    @IBOutlet weak var tblContents: UITableView!
  
    //Mark view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }

}
//Mark UI Table view data source

extension TableContentViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 10
        } else if section == 1 {
            return 20
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
    
extension TableContentViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}






