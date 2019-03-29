//
//  popupViewController.swift
//  UnfoldMedic
//
//  Created by student on 28/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class popupViewController: UIViewController {

    @IBOutlet weak var TextField: UITextView!
    var txt = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            TextField.text = txt
        // Do any additional setup after loading the view.
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
