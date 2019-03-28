//
//  CadastrosViewController.swift
//  UnfoldMedic
//
//  Created by student on 27/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class CadastrosViewController: UIViewController {
    
    @IBOutlet weak var Nome: UITextField!
    @IBOutlet weak var Estado: UITextField!
    @IBOutlet weak var Cidade: UITextField!
    @IBOutlet weak var Sexo: UITextField!
    @IBOutlet weak var CPF: UITextField!
    @IBOutlet weak var TipoSangue: UITextField!
    @IBOutlet weak var Login: UITextField!
    @IBOutlet weak var Senha: UITextField!
    
    @IBAction func DataNasc(_ sender: UIDatePicker) {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: sender.date)
        if let day = components.day, let month = components.month, let year = components.year {
            print("\(day) \(month) \(year)")
        }
    }
    /*
    var usuario: Usuario
    
   
    required init?(coder aDecoder: NSCoder) {
    //    fatalError("init(coder:) has not been implemented")
    self.usuario = Usuario()
    
    }*/
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   /*
    @IBAction func buttonOK(_ sender: UIButton) {
        var usuario = Usuario()
        Usuario.Dado.Nome = Nome.text!
        Usuario.Dado.TipoSanguineo = TipoSangue.text!
        Usuario.Dado.Cidade = Cidade.text!
        Usuario.Dado.Sexo = Sexo.text!
        Usuario.Dado.Cpf = CPF.text!
        Usuario.Dado.Login = Login.text!
        Usuario.Dado.Senha = Senha.text!
    }
 */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
