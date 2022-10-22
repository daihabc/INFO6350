//
//  ViewController.swift
//  TouristApp
//
//  Created by X D on 10/2/22.
// 1. make different size images on appicon.co/#image-sets
// 2. make new table view, cell, select table view on left，select first icon on top bar, and choose outlets-datasource and delegate
// 3. Add a UITableViewDelegate/DataSource in class name and adds in the auto fix funcs
// 4. make a new cocoa touch class (table cell) in the app folder
// 5. change the class of the cell to identity class cell
// 6. adds in an image with aspect fit
// 7. add constrains and By unchecking "constraints to margin", you are adding constraints, meaning your interface will react correctly to changes in size or orientation
//  for image add three constrains of 5 on top, left, and bottom
//  for label, add three constrains on all four sides
//8.create outlets for img and label in cite table view cell (cocoa touch class)
//9.

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let citeNames = ["tourist1", "tourist2", "tourist3", "tourist4"]
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SiteTableViewCell
        cell.imgFood.image = UIImage(named: citeNames[indexPath.row])
        cell.lblFood.text =  citeNames[indexPath.row]
        return cell
    }
    
}

