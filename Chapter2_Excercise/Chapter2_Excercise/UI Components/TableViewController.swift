//
//  TableViewController.swift
//  Chapter2_Excercise
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

class TableViewController: UIViewController  {
  
   
    
    @IBOutlet weak var restaurantTableView: UITableView!
    
    let restaurants = ["BurgerKing", "McDonald's", "Subway", "StarBucks","Domino's", "Pizza Hut"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}


extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let restaurant = restaurants[indexPath.row]
        cell.bkImg.image = UIImage(named: restaurant)
        cell.bkLbl.text = restaurant
        
        
        return cell
    }
    
    
}
