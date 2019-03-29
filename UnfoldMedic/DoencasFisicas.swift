//
//  DoencasFisicas.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class DoencasFisicas :DadosUsuario,Jsivis{
    func getStringDados() -> String {
        <#code#>
    }

    var Nome: String
    var Desc: String
    
    init(Nome: String, Desc: String) {
        self.Nome = Nome
        self.Desc = Desc
    }
    func getNome () -> String {
        return Nome
    }

   init(json: [String: AnyObject]) {
        self.Nome = json["Nome"] as? String ?? ""
        self.Desc = json["Desc"] as? String ?? ""
    }
    func getStringDados()-> String{
        return("Nome: \(self.Nome)\nDescrição:\n\(self.Desc)")
        
        
    }
    func GetJson() -> [String : Any] {
        
        
        return [
            "Nome": "\(self.Nome)",
            "Desc": "\(self.Desc)"
            
        ]
    }

    
}
