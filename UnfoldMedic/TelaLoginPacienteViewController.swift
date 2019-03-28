//
//  TelaLoginPacienteViewController.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TelaLoginPacienteViewController: UIViewController {

    
    @IBOutlet weak var textField_Login: UITextField!
    @IBOutlet weak var textField_password: UITextField!
    
    @IBAction func LoginClick(_ sender: UIButton) {
        let login = textField_Login.text
        let senha = textField_password.text
        var Confirmacao = false
        getAll.get{(usuario) in
            for user in usuario{
                if(user.Dado.Login == login && user.Dado.Senha == senha){
                    Confirmacao = true
                    Database.Load(dados: user.Dado)
                    break;
                }
            
            }
        
      //  if(Confirmacao == false)
        
        
        }
        
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Database.Limpar()v
      
        //Funcao certa get//getAll.get{(usuario) in Database.Load(dados: usuario[2].Dado) }that is a get
     //   getAll.get{(usuario) in postUser.post(pUser: usuario[2]) }that is a post
       /* var y = [Usuario]() -- that is a update
        getAll.get{(usuario) in y = usuario
        y[2].Nome = "XXXXTentani"
        y[2].Estado = "JORGEEEE"
        postUser.post(pUser: y[2])
        }*/
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
