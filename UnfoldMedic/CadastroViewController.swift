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
    @IBOutlet weak var TipoSangue: UITextField!
    @IBOutlet weak var Sexo: UITextField!
    @IBOutlet weak var CPF: UITextField!
    @IBOutlet weak var Cidade: UITextField!
    @IBOutlet weak var Estado: UITextField!
    @IBOutlet weak var Login: UITextField!
    @IBOutlet weak var Senha: UITextField!
    @IBOutlet weak var DataNasc: UITextField!
    
    /*var datePickerView  : UIDatePicker = UIDatePicker()
    
    @IBOutlet weak var dateTextField: UITextField!
    
    //Função para configurar do retorno do nosso DatePicker, ira retornar dia/mes/ano, faremos a conversão para String e adicionamos ao nosso TextField.
    func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        let strDate = dateFormatter.string(from: datePickerView.date)
        self.dateTextField.text = strDate
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*dateTextField.inputView = datePickerView
        datePickerView.datePickerMode = UIDatePickerMode.date
        datePickerView.addTarget(self, action: #selector(handleDatePicker(sender:)), for: UIControlEvents.valueChanged)*/
    }
    
    
    @IBAction func buttonOk(_ sender: Any) {
        var Dado: Dados
        Dado = Dados(Nome: Nome.text!, TipoSanguineo: TipoSangue.text!, Login: Login.text!, Senha: Senha.text!, Sexo: Sexo.text!, Cpf: CPF.text!, Cidade: Cidade.text!, Estado: Estado.text!)
        var user = Usuario(Dado: Dado,InfoImportantes: "")
        postUser.post(pUser: user)
        
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
