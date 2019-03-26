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
    
   
    func getNome () -> String {
        return nome
    }
}
