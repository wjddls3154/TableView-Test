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
        
        let myAlert = UIAlertController(title: "AlretController", message: "Test", preferredStyle: UIAlertControllerStyle.alert)
        
        
        let okAction = UIAlertAction(title: "\(indexPath.section)Section  \(indexPath.row)Row Selected", style: .default) {(ACTION: UIAlertAction) -> Void in
            
            
        }
        
        //세번째 인자를 클로져 사용
        //후행 클로져(Trailing Closure) 일때 핸들러 지우고 그앞에 ()
        
        
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: {(ACTION: UIAlertAction) -> Void in
             })
        
 
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        
        
        present(myAlert, animated: true, completion: nil)
        
        
    
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }
    
    //row의 height 조절
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
           return "1st Section"
        } else {
            return "2nd Section"
        }
    }
    
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }



}

