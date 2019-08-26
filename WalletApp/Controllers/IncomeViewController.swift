//
//  SecondViewController.swift
//  WalletApp
//
//  Created by Andras Bohacsek on 2019. 08. 23..
//  Copyright © 2019. Andras Bohacsek. All rights reserved.
//

import UIKit
import RealmSwift

class IncomeViewController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var incomeTextField: UITextField!
    
    @IBAction func incomeSaved(_ sender: Any) {
        
        save(balance: Double(incomeTextField.text!))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func save(balance: Income) {
        do {
            try realm.write {
                realm.add(balance)
            }
        } catch {
            print("Error saving balance \(error)")
        }

}

}

