//
//  Alergias.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Alergias:DadosUsuario,Jsivis {
    
    var Tipo: String
    var Desc: String
  
    var Causas = [String]()
    
    init(Tipo: String, Desc: String) {
        self.Desc = Desc
        self.Tipo = Tipo
        
    }
    
      init(json: [String: AnyObject]){
        self.Desc =  json["Desc"] as? String ?? ""
        self.Tipo =  json["Tipo"] as? String ?? ""
    
        if let  vet = json["Causas"] as? [ String ] {
            for str in vet {
             
                self.Causas.append(str)
            }
        }
        
    }
   
    func getNome () -> String {
        return Tipo
    }
    
    func getStringDados()-> String{
        return("Tipo: \(self.Tipo) \nDescrição:\n\(self.Desc)")
        
        
    }
    
    func GetJson() -> [String : Any] {

        
        return [
            "Tipo": "\(self.Tipo)",
            "Causas": self.Causas,
            "Desc": "\(self.Desc)"
            
        ]
    }
    
    
    

    
    
}

