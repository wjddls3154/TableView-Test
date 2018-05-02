//
//  ViewController.swift
//  TableView Test
//
//  Created by D7702_10 on 2018. 4. 30..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var animals = ["강아지","고양이","돼지"]
    var country = ["영국", "중국", "미국"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = "section= \(indexPath.section) row=\(indexPath.row)"
        
        let myImg = UIImage(named:"\(indexPath.row+1).jpg")

        cell.imageView?.image = myImg
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section = \(indexPath.section) row = \(indexPath.row)")
        print(animals[indexPath.row])
        print(country[indexPath.row])
        
    }
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }



}

