//
//  Doencas.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Doencas :DadosUsuario,Jsivis{
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
    
    func GetJson() -> [String : Any] {
        
        
        return [
            "Nome": "\(self.Nome)",
            "Desc": "\(self.Desc)"
            
        ]
    }

}
