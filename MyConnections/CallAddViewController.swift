//
//  CallAddViewController.swift
//  MyConnections
//
//  Created by BokChangsoon on 2018. 6. 23..
//  Copyright © 2018년 FineSoft.net. All rights reserved.
//

import UIKit

class CallAddViewController: UIViewController {

    @IBOutlet weak var memo: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateToolbar: UIToolbar!
    @IBOutlet weak var dateField: UITextField!

    
    @IBAction func onDateChanged(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM, h:mm a"
        
        self.dateField.text = formatter.string(from: sender.date)
    }
    
    @IBAction func onDoneButtonTapped(_ sender: UIBarButtonItem) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM, h:mm a"
        
        self.dateField.text = formatter.string(from: datePicker.date)
        
        if self.dateField.isFirstResponder {
            self.dateField.resignFirstResponder()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.memo.layer.borderWidth = 0.5
        self.memo.layer.borderColor = UIColor.black.cgColor
        
        dateToolbar.sizeToFit()
        self.dateField.inputAccessoryView = dateToolbar
        self.dateField.inputView = datePicker
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
