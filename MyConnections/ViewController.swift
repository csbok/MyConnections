//
//  ViewController.swift
//  MyConnections
//
//  Created by BokChangsoon on 2018. 6. 15..
//  Copyright © 2018년 FineSoft.net. All rights reserved.
//

import UIKit
import ContactsUI

class ViewController: UIViewController, CNContactPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if #available(iOS 11, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showContactsUI(_ sender: Any) {
        let contactPickerViewController = CNContactPickerViewController()
        
        contactPickerViewController.delegate = self
        
        present(contactPickerViewController, animated: true, completion: nil)
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        
        print(contact)
    }

}

