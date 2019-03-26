//
//  TelaLoginPacienteViewController.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TelaLoginPacienteViewController: UIViewController {

    @IBOutlet weak var textField_login: UITextField!
    
    @IBOutlet weak var textField_password: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getAll.get{(usuario) in var pessoa = (usuario[0])}
        
        
      //  getAll.get{(usuario) in print(usuario[0].Nome) }
       // getName.get(Nome: "jorge", callback: {(usuario) in print(usuario.Nome) })
            //{ (usuario) in
            //print(usuario.Nome)}
//

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
