//
//  FirstViewController.swift
//  sampleTenKey
//
//  Created by Eriko Ichinohe on 2017/07/05.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtSample: UITextField!
    
    @IBOutlet weak var txtSample2: UITextField!
    
    var selectedTextName = ""
    
    @IBAction func tapBtn(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 1:
            selectedTextName = "txtSample"
        case 2:
            selectedTextName = "txtSample2"
        default:
            print("error")
        }

        performSegue(withIdentifier: "showTenKey", sender: nil)
        return false

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var tkView = segue.destination as! tenKeyViewController
        
        tkView.selectedName = selectedTextName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

