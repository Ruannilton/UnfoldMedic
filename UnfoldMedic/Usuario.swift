//
//  Usuario.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Usuario : Jsivis{
    /*
    let _id: String
    let _rev: String
    s
    var Nome: String
    let DataNasc: Date
    let TipoSanguineo: String
    var TipoConta: String
    var Login: String
    var Senha: String
    var Sexo: String
    let Cpf: String
    var Cidade:String
    var Estado: String
    */
    var Dado: Dados
       
   /* init(Nome: String, DataNasc: Date, TipoSanguineo: String, TipoConta: String, Login: String, Senha: String, Sexo: String, Cpf: String, Cidade: String, Estado: String, _id: String, _rev: String) {*/
    
    init(Dado: Dados) {
        self.Dado = Dado
    }
    
    init(json: [String: AnyObject]){
        
         self.Dado = Dados(json: json)
        
        /*
        self.Nome = json["Nome"] as? String ?? ""
        self.DataNasc = json["Nascimento"] as? Date ?? Date()
        self.TipoSanguineo = json["TipoSanguineo"] as? String ?? ""
        self.TipoConta = json["TipoConta"] as? String ?? ""
        self.Login = json["Login"] as? String ?? ""
        self.Senha = json["Senha"] as? String ?? ""
        self.Sexo = json["Sexo"] as? String ?? ""
        self.Cpf = json["Cpf"] as? String ?? ""
        self.Cidade = json["Cidade"] as? String ?? ""
        self.Estado = json["Estado"] as? String ?? ""
        self._id = json["_id"] as? String ?? ""
        self._rev = json["_rev"] as? String ?? ""
       
        */
       self.Dado = Dados(json:json)
       //self.Dado = Dados(json: (json["Dados"] as? [ String: AnyObject])!)

       //Database.Load(dados: Dado)
        
      //  self.Dado = Dados(json: (json["Dados"] as? [ String: AnyObject])!)
        print(Dado.ListaDoencas.count)
       // Database.Load(dados: Dado)
  
        /*self.Dado = Dados(json: (json["Dados"] as? [ String: AnyObject])!)*/
      /*  self.Nome = "aa"
        self.DataNasc = Date()
        self.TipoSanguineo = "a"
        self.TipoConta = "a"
        self.Login = "a"
        self.Senha = "a"
        self.Sexo = "a"
        self.Cpf = "a"
        self.Cidade = "a"
        self.Estado = "a"
        self._id = "a"
        self._rev = "a"*/
    }
    
    func GetJson() -> [String : Any] {
        return [
        "Nome":"\(self.Dado.Nome)",
        "Nascimento":"\(self.Dado.DataNasc)",
        "TipoSanguineo":"\(self.Dado.TipoSanguineo)",
        "TipoConta":"\(self.Dado.TipoConta)",
        "Login":"\(self.Dado.Login)",
        "Senha":"\(self.Dado.Senha)",
        "Sexo":"\(self.Dado.Sexo)",
        "Cpf":"\(self.Dado.Cpf)",
        "Estado":"\(self.Dado.Estado)",
        "Cidade":"\(self.Dado.Cidade)",
        "InfoImportante":"\(self.Dado.InfoImportantes)",
        "Dados":self.Dado.GetJson()
        ]
    }
    
    
    func GetJsonUpdate()-> [String : Any] {
        return [
            "_id": "\(self.Dado._id)",
            "_rev": "\(self.Dado._rev)",
            "Nome":"\(self.Dado.Nome)",
            "Nascimento":"\(self.Dado.DataNasc)",
            "TipoSanguineo":"\(self.Dado.TipoSanguineo)",
            "TipoConta":"\(self.Dado.TipoConta)",
            "Login":"\(self.Dado.Login)",
            "Senha":"\(self.Dado.Senha)",
            "Sexo":"\(self.Dado.Sexo)",
            "Cpf":"\(self.Dado.Cpf)",
            "Estado":"\(self.Dado.Estado)",
            "Cidade":"\(self.Dado.Cidade)",
            "InfoImportante":"\(self.Dado.InfoImportantes)",
            "Dados":self.Dado.GetJson()
        ]
    }

    
    
    
}
