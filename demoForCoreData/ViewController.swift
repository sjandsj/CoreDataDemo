//
//  ViewController.swift
//  demoForCoreData
//
//  Created by Rails on 12/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var cityTextField: UITextField!
    @IBOutlet var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func addInfoButton(_ sender: Any) {
        let dict = ["name": nameTextField.text, "address":addressTextField.text, "city": cityTextField.text, "number": numberTextField.text]
        DataBaseHelper.shareInstance.save(object: dict as! [String : String])
    }
    
    @IBAction func showInfoButton(_ sender: Any) {
        let showInfo: showDataViewController = self.storyboard?.instantiateViewController(withIdentifier: "showData") as! showDataViewController
        self.navigationController?.pushViewController(showInfo, animated: true)
    }
}

