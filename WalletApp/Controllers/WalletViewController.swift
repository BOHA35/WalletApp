//
//  WalletViewController.swift
//  WalletApp
//
//  Created by Andras Bohacsek on 2019. 08. 26..
//  Copyright © 2019. Andras Bohacsek. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController {
    
    var expenseValue: ExpenseValue
    
    @IBOutlet weak var walletTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var remainingValue: UILabel!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
    }
    
    required init?(coder aDecoder: NSCoder) {
        expenseValue = ExpenseValue()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddExpense" {
            if let expenseViewController = segue.destination as? ExpenseViewConroller {
                expenseViewController.delegate = self as? ExpenseViewControllerDelegate
            }
        }
    }
    
    
}


extension WalletViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(expenseValue.value)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseItem", for: indexPath)
        
        return cell
        
    }
    
    
}


