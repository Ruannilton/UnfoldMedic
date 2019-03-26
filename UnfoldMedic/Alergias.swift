//
//  Alergias.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Alergias:DadosUsuario {
    
    var Tipo: String
    var Desc: String
     var nome: String
    var Causas = [String]()
    
    init(nome: String,Tipo: String, Desc: String) {
        self.Desc = Desc
        self.Tipo = Tipo
        self.nome = nome
    }
    
      init(json: [String: AnyObject]){
        self.Desc =  json["Desc"] as? String ?? ""
        self.Tipo =  json["Tipo"] as? String ?? ""
      
        if let  vet = json["Causas"] as? [ String ] {
            for str in vet {
              //  let x = Alergias(json: jsonCel)
                self.Causas.append(str)
            }
        }
        
    }
   
    func getNome () -> String {
        return nome
    }
}

