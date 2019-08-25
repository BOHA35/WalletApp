//
//  SecondViewController.swift
//  WalletApp
//
//  Created by Andras Bohacsek on 2019. 08. 23..
//  Copyright © 2019. Andras Bohacsek. All rights reserved.
//

import UIKit

class IncomeViewController: UITableViewController {
    
    var incomeArray = ["20000", "200000"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return incomeArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "incomeCell", for: indexPath)
        
        cell.textLabel?.text = incomeArray[indexPath.row]
        
        return cell
    }


}

