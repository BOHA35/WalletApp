//
//  ExpenseViewController.swift
//  WalletApp
//
//  Created by Andras Bohacsek on 2019. 08. 24..
//  Copyright © 2019. Andras Bohacsek. All rights reserved.
//

import UIKit

protocol ExpenseViewControllerDelegate: class {
    
    func expenseViewController(_ controller: ExpenseViewConroller, didFinishAdding item: ExpenseValue)
    
}

class ExpenseViewConroller: UIViewController {
    
    var delegate: ExpenseViewControllerDelegate?
    @IBOutlet weak var expenseTextField: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        let item = ExpenseValue()
        item.value = Double(expenseTextField.text!) ?? 1
        delegate?.expenseViewController(self, didFinishAdding: item)
        print(item)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
