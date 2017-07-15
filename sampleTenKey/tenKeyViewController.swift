//
//  tenKeyViewController.swift
//  sampleTenKey
//
//  Created by Eriko Ichinohe on 2017/07/05.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class tenKeyViewController: UIViewController {

    var selectedName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tapOne(_ sender: UIButton) {
        
        let fv = self.presentingViewController?.childViewControllers[0] as! FirstViewController
        
        switch selectedName {
        case "txtSample":
            fv.txtSample.text = "1"
        case "txtSample2":
            fv.txtSample2.text = "1"

        default:
            print("Other")
        }
        
        
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
