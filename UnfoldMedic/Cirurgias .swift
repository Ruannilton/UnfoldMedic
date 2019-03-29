//
//  Cirurgias .swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class  Cirurgias :DadosUsuario,Jsivis{
    
    var Tipo: String
    var Local: String
    var Anestesia: Bool
    var Desc: String
    
    init(nome: String,Tipo: String, Local: String, Anestesia: Bool, Desc: String) {
        self.Tipo = Tipo
        self.Local = Local
        self.Anestesia = Anestesia
        self.Desc = Desc
     
    }
    
    func getStringDados()-> String{
        return("Tipo: \(self.Tipo) \nLocal:\(self.Local)\nAnestesia:\n\(self.Anestesia)\nDescrição:\n\(self.Desc)")
        
        
    }

    func getNome () -> String {
        return Tipo
    }
    init(json: [String: AnyObject]){
        self.Tipo = json["Tipo"] as? String ?? ""
        self.Local = json["Local"] as? String ?? ""
        self.Anestesia = json["Anestesia"] as? Bool ?? true
        self.Desc = json["Desc"] as? String ?? ""
    }
    
    func GetJson() -> [String : Any] {
        
        
        return [
            "Tipo": "\(self.Tipo)",
            "Local": "\(self.Local)",
            "Anestesia": self.Anestesia,
            "Desc": "\(self.Desc)"
            
        ]
    }

    
}
