//
//  Medicamentos.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Medicamentos :DadosUsuario{
    var Nome:String
    var Substancia: String
    var DataInicial: Data
    var DataFinal: Data
    var Desc: String
    
    init(Nome:String,Substancia: String, DataInicial: Data, DataFinal: Data, Desc: String) {
        self.Substancia = Substancia
        self.DataFinal = DataFinal
        self.DataInicial = DataInicial
        self.Desc = Desc
        self.Nome = Nome
    }
    
    func getNome () -> String {
       
        
    
        return Nome
    
    }

}
