//
//  Cirurgias .swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class  Cirurgias :DadosUsuario{
    var nome: String
    var Tipo: String
    var Local: String
    var Anestesia: Bool
    var Desc: String
    
    init(nome: String,Tipo: String, Local: String, Anestesia: Bool, Desc: String) {
        self.Tipo = Tipo
        self.Local = Local
        self.Anestesia = Anestesia
        self.Desc = Desc
        self.nome = nome
    }
    func getNome () -> String {
        return nome
    }
    init(json: [String: AnyObject]){
        self.Tipo = json["Tipo"] as? String ?? ""
        self.Local = json["Local"] as? String ?? ""
        self.Anestesia = json["Anestesia"] as? Bool ?? true
        self.Desc = json["Desc"] as? String ?? ""
    }
}
