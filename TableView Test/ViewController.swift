//
//  ViewController.swift
//  TableView Test
//
//  Created by D7702_10 on 2018. 4. 30..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var data = ["1","2","3"]
    var subData = ["ONE", "TWO", "THREE"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = "section= \(indexPath.section) row=\(indexPath.row)"
        
        let myImg = UIImage(named:"\(indexPath.row+1).jpg")

        cell.imageView?.image = myImg
        
        return cell
    }
    

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }



}

