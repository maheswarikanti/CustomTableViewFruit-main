//
//  ViewController.swift
//  CustomTableView
//
//  Created by Ashish Ashish on 9/16/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let fruit = "Fruit\(indexPath.row+1)"
        cell.imgView.image = UIImage(named: fruit)
        cell.lblImage.text = getName(name: fruit)
        
        return cell
    }
    
    func getName (name: String) -> String {
        let fruitName = name
        switch fruitName {
        case "Fruit1":
            return "Raspberry"
        case "Fruit2":
            return "Orange"
        case "Fruit3":
            return "Mango"
        case "Fruit4":
            return "Kiwi"
        case "Fruit5":
            return "Peach"
        case "Fruit6":
            return "Watermelon"
        case "Fruit7":
            return "Strawberry"
        case "Fruit8":
            return "Banana"
        case "Fruit9":
            return "Grapes"
        case "Fruit10":
            return "Apple"
        default:
            return ""
        }
    }
}

