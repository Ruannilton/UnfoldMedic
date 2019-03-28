//
//  CadastroViewController.swift
//  UnfoldMedic
//
//  Created by student on 27/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {
    
 
    @IBOutlet weak var Nome: UITextField!
    @IBOutlet weak var Idade: UITextField!
    @IBOutlet weak var Estado: UITextField!
    @IBOutlet weak var Cidade: UITextField!
    @IBOutlet weak var Telefone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
